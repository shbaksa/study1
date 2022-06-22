<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	

	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	String sql = "insert into multi(name,age) values(?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, age);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("multi_input.jsp");
	
	
	
	%>

</body>
</html>