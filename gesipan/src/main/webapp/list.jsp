<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="jh.css">
<title>게시판</title>
<%@ page import="java.sql.*" %>
<%

	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String sql = "select * from gesipan";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
		
%>
</head>
<body>
<div id=ff> 게시판 </div>

<table>
<tr> 

<td> 작성자 </td>
<td> 제  목 </td>
<td> 조회수 </td>
<td> 작성일 </td>

</tr>
<%
	while(rs.next())
	{%>
<tr> 
<td> <%= rs.getString("name") %> </td>
<td> <a href="readnum.jsp?id=<%=rs.getInt("id") %>">  <%= rs.getString("title") %></a> </td>
<td> <%= rs.getString("readnum") %></td>
<td> <%= rs.getString("writeday") %> </td>
</tr>
<% } %>
</table>
<form action="write.jsp">
<input type="submit" value="글쓰기">
</form>
<% rs.close();
conn.close();
pstmt.close();%>

</body>
</html>