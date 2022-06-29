<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수 등록 창</title>
<%@ page import = "java.sql.*" %>
<script>

	window.opener.location.href="ex060802.jsp";
	self.close();
</script>


<%
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true","root","0000");
	
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String position = request.getParameter("position");
	String num = request.getParameter("num");
	
	String sql = "insert into baseball(name,position,num) values(?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,name);
	pstmt.setString(2,position);
	pstmt.setString(3,num);
	
	pstmt.executeUpdate();
	
	sql =  "alter table baseball auto_increment = 1;  set @count = 0; update baseball set baseball.UID = @count:=@count+1";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	
		
%>


</head>
<body>

</body>
</html>