<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- update_ok.jsp -->
 <!-- update에 필요한 값을 request받아서 쿼리 실행 -->
<%@page import="java.sql.*" %> 
<%
   // DB연결
   Class.forName("com.mysql.jdbc.Driver");
   String db="jdbc:mysql://localhost:3306/first";
   Connection conn=DriverManager.getConnection(db,"root","1234");
   
   // 쿼리 생성
   String sql="update member set name=? , phone=? , age=? where bunho=?";
   
   // 필요한 request
   request.setCharacterEncoding("utf-8");
   String name=request.getParameter("name");
   String phone=request.getParameter("phone");
   String age=request.getParameter("age");
   String bunho=request.getParameter("bunho");
   
   // 심부름꾼 생성
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setString(1, name);
   pstmt.setString(2, phone);
   pstmt.setString(3, age);
   pstmt.setString(4, bunho);
   
   // 쿼리 실행
   pstmt.executeUpdate();
   
   // close()
   pstmt.close();
   conn.close();
   
   // select로 이동
   response.sendRedirect("select.jsp");
%> 
</body>
</html>