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

	String sql = "update sungjuk set ";
	// name=?, kor=?, eng=?, mat=? where hakbun=?";
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	int hakbun = Integer.parseInt(request.getParameter("hakbun"));

	if (name != "") {
		
		String sql1 = sql + "name=? where hakbun=?";
		PreparedStatement pstmt = conn.prepareStatement(sql1);
		pstmt.setString(1, name);
		pstmt.setInt(2, hakbun);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	
	}
	if (kor != "") {
		String sql2 = sql + "kor=? where hakbun=?";
		PreparedStatement pstmt = conn.prepareStatement(sql2);
		int kor1 = Integer.parseInt(kor);
		pstmt.setInt(1, kor1);
		pstmt.setInt(2, hakbun);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();

		
	}
	if (eng != "") {
		String sql3 = sql + "eng=? where hakbun=?";
		PreparedStatement pstmt = conn.prepareStatement(sql3);
		int eng1 = Integer.parseInt(eng);
		pstmt.setInt(1, eng1);
		pstmt.setInt(2, hakbun);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
		
	}
	if (mat != "") {
		String sql4 = sql + "mat=? where hakbun=?";
		PreparedStatement pstmt = conn.prepareStatement(sql4);
		int mat1 = Integer.parseInt(mat);
		pstmt.setInt(1, mat1);
		pstmt.setInt(2, hakbun);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
	}
	
	
	response.sendRedirect("select.jsp");
	
	%>

</body>
</html>