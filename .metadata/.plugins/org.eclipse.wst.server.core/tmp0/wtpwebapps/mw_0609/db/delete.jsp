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
	// 쿼리 생성
	String sql="delete from member where bunho=?";
	// 번호 부여받기
	String bunho=request.getParameter("bunho");
	// 심부름꾼 생성
	PreparedStatement pt = conn.prepareStatement(sql);
	pt.setString(1, bunho);
	// 쿼리 실행
	pt.executeUpdate();
	
	pt.close();
	conn.close();

	
	// 삭제가 끝난 후에 이동하고자 하는 문서로 이동
	
	response.sendRedirect("select.jsp"); // 해당 문서로 이동하시오
	%>
	
	
	
	
	
	
	

</body>
</html>