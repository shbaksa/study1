<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
     // login_ok.jsp => 아이디와 비밀번호를 가지고 select를 실시
     // DB 연결
     Class.forName("com.mysql.jdbc.Driver");
     String db="jdbc:mysql://localhost:3306/first";
     Connection conn=DriverManager.getConnection(db,"root","1234");
   
     // request
     String userid=request.getParameter("userid");
     String pwd=request.getParameter("pwd");
     
     // 쿼리 생성
     String sql="select * from member where userid=? and pwd=?";
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
     pstmt.setString(1, userid);
     pstmt.setString(2, pwd);
     
     // 퀴리 실행
     ResultSet rs=pstmt.executeQuery();
     
     if(rs.next()) // 아이디,비번이 맞다
     {
    	 session.setAttribute("userid", rs.getString("userid"));
    	 session.setAttribute("name",rs.getString("name"));
    	 
    	 // close
    	 rs.close();
    	 pstmt.close();
    	 conn.close();
    	 
    	 response.sendRedirect("main.jsp");
     }
     else  // 레코드가 없는 경우
     {
    	// close
    	 rs.close();
    	 pstmt.close();
    	 conn.close();
    	 
    	 response.sendRedirect("login.jsp");
     }
%>





