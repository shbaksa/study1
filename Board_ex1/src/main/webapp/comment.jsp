<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

    <% 
    	Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
		Connection conn = DriverManager.getConnection(url,"root","0000");

		request.setCharacterEncoding("UTF-8");
		
		String bid = request.getParameter("id");
		String cname = request.getParameter("cname");
		String ccontent = request.getParameter("ccontent");    
		String cpw = request.getParameter("cpw");
		
		String sql = "insert into comment(bid, cname, ccontent, cpw,cday) values(?,?,?,?,now())";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,bid);
		pstmt.setString(2,cname);
		pstmt.setString(3,ccontent);
		pstmt.setString(4,cpw);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?secret=1&id="+bid);
				
		
    %>