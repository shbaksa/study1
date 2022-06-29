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
	
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String secret_1 = request.getParameter("secret");
	String title = request.getParameter("title");
	String area = request.getParameter("area");
	String content = request.getParameter("content");
	
	String sql = "update board2 set title=?, area=?, content=? where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,title);
	pstmt.setString(2,area);
	pstmt.setString(3,content);
	pstmt.setString(4,id);
	
	pstmt.executeUpdate();
	
	sql = "alter table board2 auto_increment = 1;  set @count = 0; update board2 set board2.id = @count:=@count+1";
 	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();	
	
	
	pstmt.close();
	conn.close();
	
	
	response.sendRedirect("content.jsp?id="+id+"&secret=1");
	
	%>
</body>
</html>