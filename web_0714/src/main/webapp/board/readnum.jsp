<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 조회수 증가시키고 content로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id");
    
    // readnum증가시키기
    // 쿼리 생성
    String sql="update board1 set readnum=readnum+1 where id=?";
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    // content로 이동
    response.sendRedirect("content.jsp?id="+id);   // content.jsp?id=3
%>


