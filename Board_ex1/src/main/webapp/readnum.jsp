<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	String secret = request.getParameter("secret");
	
	String id = request.getParameter("id");

	String sql = "update board2 set readnum=readnum+1 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	
	conn.close();
	pstmt.close();

	if(secret.equals("0"))
	{
			response.sendRedirect("content.jsp?id="+id+"&secret=0");
	}
	else
	{
			response.sendRedirect("content.jsp?id="+id+"&secret=2");
	}

	
%>
<body>

</body>
</html>