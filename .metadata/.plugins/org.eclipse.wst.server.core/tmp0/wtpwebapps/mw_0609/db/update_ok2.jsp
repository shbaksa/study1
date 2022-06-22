<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- update_ok.jsp -->

	<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");
	
			%>
			
	<% 
	String sql = "update member set ";
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String age = request.getParameter("age");
	int bunho = Integer.parseInt(request.getParameter("bunho"));
	
	if(name != "")
	{
		String sql1= sql+"name=? where bunho=?"; 
		PreparedStatement pstmt = conn.prepareStatement(sql1);
		pstmt.setString(1, name);
		pstmt.setInt(2, bunho);
		pstmt.executeUpdate();
		
	}
	if(phone != "")
	{
		String sql2= sql+"phone=? where bunho=?"; 
		PreparedStatement pstmt = conn.prepareStatement(sql2);
		pstmt.setString(1, phone);
		pstmt.setInt(2, bunho);
		pstmt.executeUpdate();
		
	}
	if(age != "")
	{
		String sql3= sql+"age=? where bunho=?"; 
		PreparedStatement pstmt = conn.prepareStatement(sql3);
		int age1 = Integer.parseInt(age);
		pstmt.setInt(1, age1);
		pstmt.setInt(2, bunho);
		pstmt.executeUpdate();
		
	}
	
	
	

	response.sendRedirect("select.jsp");
	%>
</body>
</html>