<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request받기
    request.setCharacterEncoding("utf-8");
    String hakbun=request.getParameter("hakbun");
    String name=request.getParameter("name");
    String kor=request.getParameter("kor");
    String eng=request.getParameter("eng");
    String mat=request.getParameter("mat");
    
    // 쿼리 생성
    String sql="insert into sungjuk(hakbun,name,kor,eng,mat) values(?,?,?,?,?)";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,hakbun);
    pstmt.setString(2,name);
    pstmt.setString(3,kor);
    pstmt.setString(4,eng);
    pstmt.setString(5,mat);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close()
    pstmt.close();
    conn.close();
    
    // select로 이동
    response.sendRedirect("select.jsp");
%>
