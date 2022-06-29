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
	
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String email = request.getParameter("email");
		
	
	if(content.equals(""))
	{
		response.sendRedirect("write.jsp?none=3");
	}
	else if(title.equals(""))
	{
		response.sendRedirect("write.jsp?none=2");
	}
	else if(email.equals(""))
	{
		response.sendRedirect("write.jsp?none=4");	
	}
	else if(name.equals(""))
	{
		response.sendRedirect("write.jsp?none=1");
	}
	else if(pw.equals(""))
	{
		response.sendRedirect("write.jsp?none=5");
	}
	else
	{
		String sql = "insert into gesipan(name,title,content,pw,email,readnum,writeday) values(?,?,?,?,?,0,now())";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,title);
		pstmt.setString(3,content);
		pstmt.setString(4,pw);
		pstmt.setString(5,email);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	
		response.sendRedirect("list.jsp");
	}
 %>