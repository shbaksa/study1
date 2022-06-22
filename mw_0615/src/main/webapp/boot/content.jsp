<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<style>
	#del { 
		display : none;
	}
	table {
		height : 100%;
	}
	
</style>

<script>
	function view(n) {
		
		document.getElementById("del").style.display="table-row";
		if(n==0){
			document.pkc.action="update.jsp";
			document.pkc.submit.value="수정";
		}
		else{
			document.pkc.action="delete.jsp";
			document.pkc.submit.value="삭제";
		}
	}
	<%
	if(request.getParameter("chk") != null) // update_ok에서 이동시 chk값이 존재한다.
	{
	%>		
	alert("비밀번호가 틀렸습니다");	
	<%		
	}
	%>
</script>
</head>
<body>
	<%
	
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request
	String id = request.getParameter("id"); // board2테이블의 id값
	
	// 쿼리생성
	String sql = "select * from board2 where id=?";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	// 쿼리실행 => resultset
	ResultSet rs =  pstmt.executeQuery();
	rs.next();	
	%>
	
	<table class="table table-bordered" width="600" height="1000" >
	<thead>
	<td colspan="4" align="center"> 자유게시판 </td>
	</thead>
	<tbody>
	<tr>
	<th scope="row" width="100" > <b>제목</b> </th> <!-- 3 -->
	<td colspan="2"> <%=rs.getString("title") %> </td>
	<td align="right"> <button type="button" class="btn btn-secondary" onclick="view(0)" id="csh" >수정</button></td>	
	</tr>
	<tr>
	<th scope="row" > <b>이름</b> </th> <!-- 4 -->
	<td > <%=rs.getString("name")%> </td>
	<td > <b>지역</b> </td>	
	<% String area;
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
	<td> <%=area %>  </td>
	</tr>
	<tr> <!-- 4 -->
	<th scope="row"> <b>조회수</b> </th>
	<td > <%=rs.getString("readnum") %> </td>	
	<td> <b>작성일</b> </td>
	<td > <%=rs.getString("writeday") %> </td>
	</tr>
	<tr height="600"> <!-- 2 -->
	<th scope="row"  > <b>내용</b> </th>
	<td colspan="3"><%=rs.getString("content").replace("\r\n","<br>") %>/td>
	</tr>	
	<tr>
	<th scope="row" > <b>공개여부</b> </th> <!-- 3 -->
	<td colspan="2"> <%switch(rs.getInt("bimil")){
		case 0 :  %> 공개글 <% break;
		case 1 :  %> 비밀글 <% break;	
		}%> </td>
	<td align="right" > <button type="button" class="btn btn-secondary" onclick="view(1)" id="csh">삭제</button></td>
	</tr>
	</tbody>
	<tfoot>
	
	
	<tr>
	<th scope="row">비고</th>
	
	<td align="right" colspan="3"> <button type="button" class="btn btn-secondary" >목록</button> </td>

	
	
	<%-- 
	<a href="update.jsp?id=<%=id%>"> <input type="submit" value="수정"> </a>
	<a href="list.jsp"> <input type="button" value="목록"></a> 
	<a href="#" > <input type="button" value="삭제"></a></td>
	</tr> --%>
	
	
	<tr id="del">	
	<td colspan="4" align="center"> <form name="pkc" method="post" action="">
	<input type="hidden" name="id" value="<%=id%>">
	비밀번호 <input type="password" name="pwd"> <input type="submit" name="submit" value=""></form>  </td>
	</tr>
	
	
	</tfoot>
	</table>
	<hr>
	<!-- 댓글관련 -->
	
	
	
	
	
	<table width="600" class="table table-bordered">
	<tr>
	
	<form method="post" action="dat_write_ok.jsp"> 
	<input type="hidden" name="bid" value="<%=id %>"> <!-- 댓글을 달 board2 글의 id -->
	<td width="90"> <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="닉네임" size="1"> </td>
	 
	<td><textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="댓글 입력창"></textarea>
	<td width="120"><input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" size="2"></td>
	<td width="90"><button type="submit" class="btn btn-secondary">입력</button></td></form>
	
	</tr>
	</table>
	
<%
pstmt.close();
conn.close();%>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>