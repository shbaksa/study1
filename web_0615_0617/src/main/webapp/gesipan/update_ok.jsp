<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    //  해당 레코드의 수정될 값을 가져와서 수정쿼리를 실행 content로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String email=request.getParameter("email");
    
    // 쿼리 생성
    String sql="update gesipan set name=?, title=?, content=?, email=? where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, title);
    pstmt.setString(3, content);
    pstmt.setString(4, email);
    pstmt.setString(5, id);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // content로 이동
    response.sendRedirect("content.jsp?id="+id);
%>







