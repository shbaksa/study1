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
	
	if(request.getParameterValues("a") != null){
	String sql="delete from book where id=?";
	
	String id=request.getParameter("id");
	
	PreparedStatement pt = conn.prepareStatement(sql);
	pt.setString(1, id);
	
	pt.executeUpdate();
	pt.close();
	
	}
	
	
	
	
	
	
	response.sendRedirect("select1.jsp"); // 해당 문서로 이동하시오
	%>
	

</body>
</html>