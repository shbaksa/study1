<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // DB 연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
   
    // request
    String id=request.getParameter("id");
    int food=Integer.parseInt(request.getParameter("food"));
    
    // 쿼리 생성        // p1,p2,p3,p4,p5
    String sql="update vote set p?=p?+1 where id=?";
    
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setInt(1, food);
    pstmt.setInt(2, food);
    pstmt.setString(3, id);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // 이동
    response.sendRedirect("vote_view.jsp");
%> 












