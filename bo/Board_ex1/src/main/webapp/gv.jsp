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
	String up = request.getParameter("up");
	
	if(up.equals("1"))
	{
	
	String sql = "update board2 set gv=gv+1 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
		
	pstmt.executeUpdate();
	
	
	sql = "alter table board2 auto_increment = 1;  set @count = 0; update board2 set board2.id = @count:=@count+1";
 	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();	
	
	pstmt.close();
	conn.close();
	
	
	response.sendRedirect("content.jsp?secret=1&id="+id);
	}
	
	else if(up.equals("2"))
	{
	
	String sql = "update board2 set gvdown=gvdown+1 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
		
	pstmt.executeUpdate();
	
	
	sql = "alter table board2 auto_increment = 1;  set @count = 0; update board2 set board2.id = @count:=@count+1";
 	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();	
	
	pstmt.close();
	conn.close();
	
	
	response.sendRedirect("content.jsp?secret=1&id="+id);
	}
	
	
	
	

	
	

	%>
</body>
</html>