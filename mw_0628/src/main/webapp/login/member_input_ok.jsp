<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
     // 회원가입 폼의 값을 가져와서 테이블에 저장
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
     String db="jdbc:mysql://localhost:3306/first";
     Connection conn=DriverManager.getConnection(db,"root","1234");
     
     // request
     request.setCharacterEncoding("utf-8");
     String userid=request.getParameter("userid");
     String name=request.getParameter("name");
     String pwd=request.getParameter("pwd");
     String phone=request.getParameter("phone");
     String zip=request.getParameter("zip");
     String juso1=request.getParameter("juso1");
     String juso2=request.getParameter("juso2");
          
     // 쿼리 생성
     String sql="insert into member(userid,name,pwd,phone,zip,juso1,juso2,writeday) ";
     sql=sql+" values(?,?,?,?,?,?,?,now())";
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
     pstmt.setString(1, userid);
     pstmt.setString(2, name);
     pstmt.setString(3, pwd);
     pstmt.setString(4, phone);
     pstmt.setString(5, zip);
     pstmt.setString(6, juso1);
     pstmt.setString(7, juso2);
     
     // 쿼리 실행
     pstmt.executeUpdate();
     
     // close
     pstmt.close();
     conn.close();
     
     // login으로 이동
     response.sendRedirect("login.jsp");
%>









