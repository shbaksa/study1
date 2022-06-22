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

	// name=?, kor=?, eng=?, mat=? where hakbun=?";
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	int hakbun = Integer.parseInt(request.getParameter("hakbun"));

	String sql = "update sungjuk set name=?, kor=?, eng=?, mat=? where hakbun=? ";
	
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setInt(2, kor);
	pstmt.setInt(3, eng);
	pstmt.setInt(4, mat);
	pstmt.setInt(5, hakbun);
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	

	response.sendRedirect("select.jsp");
	%>

</body>
</html>