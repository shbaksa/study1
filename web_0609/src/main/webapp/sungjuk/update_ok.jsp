<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
 
    // request
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String kor=request.getParameter("kor");
    String eng=request.getParameter("eng");
    String mat=request.getParameter("mat");
    String hakbun=request.getParameter("hakbun");
    
    // 쿼리 생성
    String sql="update sungjuk set name=? , kor=? , eng=? , mat=? where hakbun=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,name);
    pstmt.setString(2,kor);
    pstmt.setString(3,eng);
    pstmt.setString(4,mat);
    pstmt.setString(5,hakbun);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close()
    pstmt.close();
    conn.close();
    
    // select이동
    response.sendRedirect("select.jsp");
%>