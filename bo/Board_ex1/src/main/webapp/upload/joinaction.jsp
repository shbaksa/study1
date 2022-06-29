<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>



<%
	
	Class.forName("org.mariadb.jdbc.Driver");
	String db="jdbc:mariadb://localhost:3306/ex1";
	Connection conn=DriverManager.getConnection(db,"root","0000");
	
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String phone = request.getParameter("phone");
	String psad = request.getParameter("postad");
	String address = request.getParameter("address")+request.getParameter("address_01");
	
	String sql = "insert into member_1(userid,name,pwd,phone,postad,address) values(?,?,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,userid);
	pstmt.setString(2,name);
	pstmt.setString(3,pwd);
	pstmt.setString(4,phone);
	pstmt.setString(5,psad);
	pstmt.setString(6,address);
	pstmt.executeUpdate();
	
	session.setAttribute("userid",userid);
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("main.jsp");
	
	

%>