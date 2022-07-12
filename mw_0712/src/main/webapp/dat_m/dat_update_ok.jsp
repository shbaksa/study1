<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
    <%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");
		
		// request
		request.setCharacterEncoding("utf-8");
		String bid = request.getParameter("bid");
		String id = request.getParameter("id");
		String content = request.getParameter("content");
		String name = request.getParameter("name");
		// 쿼리생성
		String sql = "update dat set name=?, content=? where id=?";
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,content);
		pstmt.setString(3,id);
		// 쿼리실행
		pstmt.executeUpdate();
		// close
		pstmt.close();
		conn.close();
		// response
		response.sendRedirect("content.jsp?id="+bid);
		
		%>