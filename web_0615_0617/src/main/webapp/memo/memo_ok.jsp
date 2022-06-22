<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 폼에 입력된 값을 읽어와서 memo테이블에 저장을 하고 난뒤 memo.jsp로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String content=request.getParameter("content");
    String pwd=request.getParameter("pwd");
    
    // 쿼리 생성
    String sql="insert into memo(name,content,pwd,writeday) values(?,?,?,now())";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, content);
    pstmt.setString(3, pwd);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // memo로 이동
    response.sendRedirect("memo.jsp");
%>










