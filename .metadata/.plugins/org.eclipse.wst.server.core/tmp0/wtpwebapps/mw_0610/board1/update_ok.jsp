<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
	
	
	
	
	
	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");
	// 쿼리 생성
	
	String sql = "update board1 set name=?, title=?, content=? where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	String name= request.getParameter("name");
	String title=request.getParameter("title");
	String content =request.getParameter("content");	
	String id =request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	
	
	// 심부름꾼
	
	pstmt.setString(1, name);
	pstmt.setString(2, title);
	pstmt.setString(3, content);
	pstmt.setString(4, id);
	// 쿼리실행

	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	
	response.sendRedirect("content.jsp?id="+id); // content.jsp?id=11 
	%>
	
	 
	