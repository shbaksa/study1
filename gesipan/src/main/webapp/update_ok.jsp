<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<meta charset="UTF-8">
<%


	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String email = request.getParameter("email");
		
	
	if(content.equals(""))
	{
		response.sendRedirect("update.jsp?none=1&id="+id);
	}
	else if(title.equals(""))
	{
		response.sendRedirect("update.jsp?none=2&id="+id);
	}
	else if(email.equals(""))
	{
		response.sendRedirect("update.jsp?none=3&id="+id);
	}
	else
	{
		String sql = "update gesipan set title=?, content=?, email=? where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,title);
		pstmt.setString(2,content);
		pstmt.setString(3,email);
		pstmt.setString(4,id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	
		response.sendRedirect("content.jsp?id="+id);
	}
 %>