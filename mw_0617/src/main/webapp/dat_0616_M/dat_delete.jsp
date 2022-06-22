<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // dat테이블을 삭제 id, pwd
    // Db연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id"); // dat테이블 id
    String pwd=request.getParameter("pwd");
    String bid=request.getParameter("bid"); // board2테이블의  id => content.jsp에 넘겨준다
    // DB비밀번호 가져오기
    String sql="select pwd from dat where id=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    String dbpwd=rs.getString("pwd");
    
    if(pwd.equals(dbpwd))
    {
      // 쿼리 생성
      sql="delete from dat where id=?";
      
      // 심부름꾼 생성
      pstmt=conn.prepareStatement(sql);
      pstmt.setString(1,id);
      // 쿼리 실행
      pstmt.executeUpdate();
      pstmt.toString();
      // close
      pstmt.close();
      conn.close();
      // content로 이동
      response.sendRedirect("content.jsp?id="+bid); // board2테이블의 id가 필요
    }
    else
    {
       // close
       pstmt.close();
       conn.close();
       // content로 이동
       response.sendRedirect("content.jsp?id="+bid);
    }
%>