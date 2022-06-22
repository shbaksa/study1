<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border : 1px solid black;
		border-spacing : 0px;
	}
	td {
		border : 1px solid black;
		}
	#del {
		display : none;
	}
</style>

<script>
	function view() {
		
		document.getElementById("del").style.display="table-row";
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
	
	<table width="800" align="center" >
	<tr>
	<td > <b>제목</b> </td> <!-- 3 -->
	<td colspan="2"> <%=rs.getString("title") %> </td>
	<td > 비고</td>	
	</tr>
	<tr>
	<td > <b>이름</b> </td> <!-- 4 -->
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
	<td> <b>조회수</b> </td>
	<td > <%=rs.getString("readnum") %> </td>	
	<td> <b>작성일</b> </td>
	<td > <%=rs.getString("writeday") %> </td>
	</tr>
	<tr> <!-- 2 -->
	<td> <b>내용</b> </td>
	<td colspan="3" > <%=rs.getString("content").replace("\r\n","<br>") %>
	</tr>	
	<tr>
	<td > <b>공개여부</b> </td> <!-- 3 -->
	<td colspan="2"> <%switch(rs.getInt("bimil")){
		case 0 :  %> 공개글 <% break;
		case 1 :  %> 비밀글 <% break;	
		}%> </td>
	<td > 비고 </td>
	</tr>
	
	<tr>
	<td colspan="4" > <form method="post" action="list.jsp"> <!-- 1 -->
	 <input type="submit" value="목록"> </form> </td>
	</tr>
	<tr>
	<td colspan="4"> <a href="update.jsp?id=<%=id%>"> <input type="submit" value="수정"> </a>
	<a href="list.jsp"> <input type="submit" value="목록"></a> 
	<a href="#" onclick="view()"> <input type="button" value="삭제"></a></td>
	</tr>
	<tr id="del">
	<td colspan="4"> <form method="post" action="delete.jsp">
	<input type="hidden" name="id" value="<%=id%>">
	비밀번호 <input type="password" name="pwd"> <input type="submit" value="삭제"></form>  </td>
	</tr>
	</table>
	<hr>
	<!-- 댓글관련 -->	
	<%
	sql ="select * from dat where bid=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs =  pstmt.executeQuery();
	
	%>
	<table width="600" border="1" align="center">
	<thead>
	<tr>
	<form method="post" action="dat_write_ok.jsp"> 
	<input type="hidden" name="bid" value="<%=id %>"> <!-- 댓글을 달 board2 글의 id -->
	<td><input type="text" name="name" size="4" placeholder="이름"> </td>
	<td><textarea cols="30" rows="2" name="content" placeholder="댓글을 달아 주세요"></textarea>
	<td><input type="password" name="pwd" size="4" placeholder="비밀번호"></td>
	<td><input type="submit" value="댓글달기"></td></form>	
	</tr>
	</thead>
	<tbody>
	<% while(rs.next()) {%>
	<tr> <!-- 이름을 클릭하면 수정메뉴, 날짜를 누르면 삭제  -->
	<td onclick="dat_view(<%=rs.getInt("id")%>,1)"> <%=rs.getString("name") %> </td>
	<td colspan="2"><%=rs.getString("content") %></td>	
	<td onclick="dat_view(<%=rs.getInt("id")%>,2)"> <%=rs.getString("writeday") %> </td> <!-- 날짜를 클릭하면 삭제폼이 보이게 -->
	</tr>
	<% } %>
	</tbody>
	<tfoot>
	<!-- 댓글을 삭제 : 쿼리실행전에 비밀번호 체크 => delete from dat where id=? -->
	<!-- 댓글 삭제를 위한 폼  -->
	
	</tfoot>
	<!-- 댓글 수정을 휘한 폼  -->
	</table>
	<form name="pkc1" id="dat" method="post" action="" align="center" >
	<input type="hidden" name="id">
	<input type="hidden" name="bid" value="<%=id %>">
	<input type="password" name="pwd" placeholder="비밀번호" size="5">
	<input type="submit" name="submit" value="전송">
	</form>
	<style>
		
		#dat {
			visibility : hidden; /* visible */
		}

	</style>
	<script>
		function dat_view(id,n) {
			document.getElementById("dat").style.visibility="visible";
			document.pkc1.id.value=id;
			if(n==2) {
				document.pkc1.action="dat_delete.jsp";
				document.pkc1.submit.value="삭제";
			}
			else if (n==1)
				{
				document.pkc1.action="dat_update.jsp"
				document.pkc1.submit.value="수정";
				}
			
		}
		
	</script>
<%
rs.close();

pstmt.close();
conn.close();

%>	

</body>
</html>