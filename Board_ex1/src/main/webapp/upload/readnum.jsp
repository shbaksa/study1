<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 해당레코드의 조회수를 1증가시킨후 content로 이동
    // DB연결
      Class.forName("org.mariadb.jdbc.Driver");
     String db="jdbc:mariadb://localhost:3306/ex1";
     Connection conn=DriverManager.getConnection(db,"root","0000");
     
    // request
    String id=request.getParameter("id");
    
    // 쿼리 생성
    String sql="update upload set readnum=readnum+1 where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // content로 이동
    response.sendRedirect("content.jsp?id="+id);
%>









