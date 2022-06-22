<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 해당 레코드를  삭제하고 난 뒤 list로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id");
    
    // 쿼리 생성
    String sql="delete from gesipan where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // list로 이동
    response.sendRedirect("list.jsp");
%>




