<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
  	String db="jdbc:mysql://localhost:3306/first";
  	Connection conn=DriverManager.getConnection(db,"root","1234");
  	
    // 입력할 값 가져오기 (한글)
    request.setCharacterEncoding("utf-8");
    String bunho=request.getParameter("bunho");
    String name=request.getParameter("name");
    String phone=request.getParameter("phone");
    String age=request.getParameter("age");
    
    // 심부름꾼 생성
    String sql="insert into member(bunho,name,phone,age) ";
    sql=sql+"values(?,?,?,?)";
    
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, bunho);
    pstmt.setString(2, name);
    pstmt.setString(3, phone);
    pstmt.setString(4, age);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // select로 이동
    response.sendRedirect("select.jsp");
%>
</body>
</html>