<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- write_ok.jsp : DB에 저장 -->
<%@page import="java.sql.*" %> 
<%
     // write.jsp의 폼에 입력된 값을 가져와서 board1테이블에 저장 후 list.jsp로 이동
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
	 String db="jdbc:mysql://localhost:3306/first";
	 Connection conn=DriverManager.getConnection(db,"root","1234");
	 
     // request
     request.setCharacterEncoding("utf-8");
     String name=request.getParameter("name");
     String title=request.getParameter("title");
     String pwd=request.getParameter("pwd");
     String content=request.getParameter("content");
     
     // 쿼리 생성
     String sql="insert into board1(name,title,pwd,content,readnum,writeday) ";
     sql=sql+"values(?,?,?,?,0,now())";
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
     pstmt.setString(1, name);
     pstmt.setString(2, title);
     pstmt.setString(3, pwd);
     pstmt.setString(4, content);
     
     // 쿼리 실행
     pstmt.executeUpdate();
     
     // close();
     pstmt.close();
     conn.close();
     
     // list.jsp로 이동
     response.sendRedirect("list.jsp");
%>
