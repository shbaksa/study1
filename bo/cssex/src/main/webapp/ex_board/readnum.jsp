<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%

	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	String UID = request.getParameter("uid");
	
	String sql_01 ="update board1 set readnum=readnum+1 where UID=?";
	PreparedStatement pstmt_01 = conn.prepareStatement(sql_01);
	pstmt_01.setString(1,UID);
	pstmt_01.executeUpdate();

	conn.close();
	pstmt_01.close();
	response.sendRedirect("content.jsp?uid="+UID);

%>

</body>
</html>