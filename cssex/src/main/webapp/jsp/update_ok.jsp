<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<%
		

 	Class.forName("org.mariadb.jdbc.Driver");
 	String url = "jdbc:mariadb://localhost:3306/ex1";
 	Connection conn = DriverManager.getConnection(url,"root","0000");

 	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String position = request.getParameter("position");
	String num = request.getParameter("num");
	
	
	String sql = "UPDATE baseball set name=?, position=?, num=? where UID=10";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.setString(2,position);
	pstmt.setString(3,num);
	
		
	pstmt.executeUpdate();
	
	sql = "alter table baseball auto_increment = 1;  set @count = 0; update baseball set baseball.UID = @count:=@count+1";
 	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();	
	
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("ex060802.jsp");

%>
<body>

</body>
</html>