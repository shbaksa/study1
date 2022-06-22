<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // dat_write_ok.jsp => 댓글폼에 입력한 값을 dat테이블에 저장하고 content로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String content=request.getParameter("content");
    String pwd=request.getParameter("pwd");
    String bid=request.getParameter("bid"); // board2의 테이블의 id
    
    // 쿼리 생성
    String sql="insert into dat(name,content,pwd,bid,writeday) values(?,?,?,?,now())";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, content);
    pstmt.setString(3, pwd);
    pstmt.setString(4, bid);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // content이동
    response.sendRedirect("content.jsp?id="+bid); // board2테이블의 id값을 전달
%>