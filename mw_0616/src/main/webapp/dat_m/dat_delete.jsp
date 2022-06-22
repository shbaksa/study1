<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
    <% 
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request 
    String bid = request.getParameter("bid"); //board2 id
	
	String id = request.getParameter("id"); // content dat id
	String pwd = request.getParameter("pwd"); // content dat pwd
    
	// 쿼리생성
    String sql = "select * from dat where id=?";
 
    // 심부름꾼
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    ResultSet rs = pstmt.executeQuery();
    rs.next();
    
    String dbpwd = rs.getString("pwd"); // db dat pwd
    
    if(pwd.equals(dbpwd))
    {
    	sql = "delete from dat where id=?";
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	pstmt.executeUpdate();
    	
    	pstmt.close();
    	conn.close();
    	
    	response.sendRedirect("content.jsp?id="+bid);
    }
    
    
    else{
    	response.sendRedirect("content.jsp?id="+bid);
    }
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    %>