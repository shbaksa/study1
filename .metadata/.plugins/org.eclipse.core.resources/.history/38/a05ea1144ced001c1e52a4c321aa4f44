<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%@ page import="java.sql.*" %>   
    <%
    	// 해당레코드를 삭제하고 memo.jsp로 이동
    	
    	// DB연결
    	Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
    	Connection conn=DriverManager.getConnection(db,"root","1234");
    	
    	// request
    	request.setCharacterEncoding("utf-8");
    	String id = request.getParameter("id");
    	String pwd = request.getParameter("pwd");
    	
    	String sql = "select pwd from memo where id=?";
    	PreparedStatement pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	ResultSet rs = pstmt.executeQuery();
    	rs.next();
    	String dbpwd = rs.getString("pwd");
    	
    	if(pwd.equals(dbpwd)) {
    	// 쿼리생성
    	sql = "delete from memo where id=?";
    	
    	// 심부름꾼 생성
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
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