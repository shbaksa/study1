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
	<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");
	%>




	<%
	

		String title = request.getParameter("title");
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		String writeday = request.getParameter("writeday");
		String sql = "insert into book(title,name,price,writeday)";
		sql = sql + "values (?,?,?,?)";

		PreparedStatement pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setString(4, writeday);
		pstmt.executeUpdate();
	
	 response.sendRedirect("select1.jsp"); 
	%>
	<p>
		
</body>
</html>