<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
<%
		

 	Class.forName("org.mariadb.jdbc.Driver");
 	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
 	Connection conn = DriverManager.getConnection(url,"root","0000");

 	request.setCharacterEncoding("UTF-8");
 	String[] a = request.getParameterValues("pay");
	
 	for(int i =0 ; i<a.length; i++)
 	{
 	 	 	 	
 	String sql = "Delete from baseball where UID=?";
 	 	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,a[i]);
	pstmt.executeUpdate();	
		
 	}
 	
 	String sql = "alter table baseball auto_increment = 1;  set @count = 0; update baseball set baseball.UID = @count:=@count+1";
 	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();	
	
	response.sendRedirect("ex060802.jsp");

	pstmt.close();
	conn.close();
		
%>

</head>
<body>
</body>
</html>