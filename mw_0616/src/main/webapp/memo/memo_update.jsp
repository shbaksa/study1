<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
    	Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// request
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String pwd = request.getParameter("pwd");
		
		String sql = "select pwd from memo where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		String dbpwd = rs.getString("pwd");
		
		if(pwd.equals(dbpwd)){
		// 쿼리생성
		sql = "update memo set name=?, content=? where id=?";
		
		// 심부름꾼
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		// 쿼리실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		// response
		response.sendRedirect("memo.jsp");
		}
		else {
			response.sendRedirect("memo.jsp");
		}
			
	
	
	%>