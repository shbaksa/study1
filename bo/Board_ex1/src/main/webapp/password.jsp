<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
	
	padding-top: 50px;
	padding-left: 70px;
	background : black;
	font-size: 15px;
	font-family: Courier,impact,fantasy;
	marigin : 0;
	color:white;
}
table
{
	text-align:center;
	width:200px;
	border-collapse: collapse;
	border: hidden;
	border-collapse: collapse;
	background : #EAEAEA;
	border-radius : 30px;
}

div{
	background: #F6F6F6;
	font-size : 50px;
	text-align : center;
}
form
{
	display:inline;
}
</style>

<meta charset="UTF-8">
<title>Password</title>

<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String chk = request.getParameter("chk");
	String sql = "select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id); 
	
	pstmt.executeUpdate();
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	
	String pw = rs.getString("pw");
		
	
	%>
	
<script>
		function chk()
		{
			<% if(chk != null) {%>
			alert("비밀번호가 틀렸습니다.");
			<% }%>
		}
</script>
	
</head>
<body onload="chk()">

<form method="post" action="pw_ok.jsp?id=<%= id%>">
비밀번호 입력 
<table>
<tr>
<td> <input type="password" name="pw" size="13" style="border:hidden; border-radius:5px;"></td>
<td> <input type="submit" value="입력"></td>
</tr>
</table>
</form>
</body>
</html>