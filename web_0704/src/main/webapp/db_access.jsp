<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- db_access.jsp -->
  <!-- 쿼리문을 java 클래스를 통해 동작하기 -->
<%@page import="java.sql.*" %>  
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/second";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // 쿼리 생성
    String sql="create table test(name char(10), age int)";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
%>
</body>
</html>