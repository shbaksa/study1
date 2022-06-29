<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%
	
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String bbid = request.getParameter("bbid");
	String cname = request.getParameter("cname");
	String ccontent = request.getParameter("ccontent");

	String sql = "update comment set cname=?, ccontent=? where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,cname);
	pstmt.setString(2,ccontent);
	pstmt.setString(3,bbid);
	pstmt.executeUpdate();
	
	response.sendRedirect("content.jsp?id="+id);
	%>
	