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
	
	// 쿼리 생성
	String sql = "update member set name=?, phone=?, age=? where bunho=?";
	// 필요한 request
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	int age = Integer.parseInt(request.getParameter("age"));
	int bunho = Integer.parseInt(request.getParameter("bunho"));

	// 심부름꾼
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, phone);
	pstmt.setInt(3, age);
	pstmt.setInt(4, bunho);
	
	// 쿼리실행
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();

	response.sendRedirect("select.jsp");
	%>
</body>
</html>