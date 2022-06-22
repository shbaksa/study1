<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>게시판</title>
   <style>
   #aa {
   	position : absolute;
   	visibility : hidden;
   	background : black;
   	border : 2px soild black;
   	color : white;
   }
   </style>
    <script>
    
	function view(id) {
		
		document.getElementById("aa").style.visibility="visible";
		document.getElementById("aa").style.left=(event.pageX+10)+"px";
		document.getElementById("aa").style.top=event.pageY+"px";
		document.pkc.id.value=id; // 매개변수를 폼태그에 전달
		}
</script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>
  <%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234"); 
	
	String sql ="select * from board2";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	%>
	<form name="pkc" id="aa" method="post" action="bimil_check.jsp">
	<input type="hidden" name="id">
	 비밀번호  <input type="password" name="pwd" size="4">
	<input type="submit" value="확인">
	</form>
	
  <div> <h1 class="p-3 mb-2 bg-light text-dark" align="center"> 게시판 목록 </h1></div>
  <table class="table table-bordered table-striped" >
  <thead align="center">
    <tr>
      <th scope="col" >제목</th>
      <th scope="col">작성자</th>
      <th scope="col">조회수</th>
      <th scope="col">작성날짜</th>
      <th scope="col">지역</th>
      <th scope="col">공개여부</th>
    </tr>
  </thead>
  <tbody>
  <% while(rs.next()) {%>
    <tr>
    <%if(rs.getInt("bimil") == 0) 
	{ %>	
	<td ><a href="readnum.jsp?id=<%=rs.getInt("id")%>"> <%=rs.getString("title") %> </a>  </td>
	<%
	}
	else { 
	%>	
    <td > <span onclick="view(<%=rs.getInt("id")%>)"><%=rs.getString("title") %></span> </td> <!-- 클릭하면 비밀번호 입력창이 나오게 -->
								<!-- id값을 위의 폼태그의 id에 준다 -->
	<%
	}
	%>
    <td> <%=rs.getString("name") %></td>
	<td> <%=rs.getString("readnum") %></td>
	<td > <%=rs.getString("writeday") %> </td>	
	<%
	String area;
	switch(rs.getInt("area")) { 
	case 0 : area="서울"; break; 
	case 1 : area="경기"; break;
	case 2 : area="강원"; break;
	case 3 : area="충청"; break;
	case 4 : area="전라"; break;	
	case 5 : area="경상"; break;	
	case 6 : area="제주"; break;	
	default : area="???";	
	} %> 
	<td> <%=area %></td>	
	<td> <%switch(rs.getInt("bimil")){
		case 0 :  %> 공개글 <% break;
		case 1 :  %> 비밀글 <% break;
		
		}%> </td>
	</tr>
  <% } %>
  </tbody>
  <tfoot>
  <td colspan="6" align="center"><input class="btn btn-outline-dark" type="submit" value="글쓰기"></td>
  </tfoot>
</table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>