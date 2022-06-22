<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 폼에 입력된값을 가져와서 gesipan테이블에 저장을 하고 난뒤 list.jsp로 이동
    // DB 연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String email=request.getParameter("email");
    String pwd=request.getParameter("pwd");
    
    // 쿼리 생성
    String sql="insert into gesipan(name,title,content,email,pwd,writeday) values(?,?,?,?,?,now())";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, title);
    pstmt.setString(3, content);
    pstmt.setString(4, email);
    pstmt.setString(5, pwd);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close()
    pstmt.close();
    conn.close();
    
    // list로 이동
    response.sendRedirect("list.jsp");
%>