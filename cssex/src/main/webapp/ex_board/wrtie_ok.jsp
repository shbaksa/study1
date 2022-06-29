<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성</title>
<%@ page import="java.sql.*" %>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true"
																		,"root","0000");
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	String sql = " insert into board1(name,title,pw,content,readnum,writeday) value(?,?,?,?,0,now())";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.setString(2,title);
	pstmt.setString(3,pw);
	pstmt.setString(4,content);
	pstmt.executeUpdate();
	
	sql = "alter table board1 auto_increment = 1;  set @count = 0; update board1 set board1.uid = @count:=@count+1";
 	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();	
		
	pstmt.close();
	conn.close();
	
	response.sendRedirect("list.jsp");
	
%>
</head>
<body>

</body>
</html>