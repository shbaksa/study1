<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // delete.jsp => 해당레코드를 삭제하고 list로 이동 (단, 비밀번호 체크를 하기)
    // Db연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    
    // DB에 있는 비밀번호 가져오기
    String sql="select pwd from board2 where id=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    String dbpwd=rs.getString("pwd");
    
    
    if(pwd.equals(dbpwd))
    {
      // 쿼리 생성
      sql="delete from board2 where id=?";
      
      // 심부름꾼 생성
      pstmt=conn.prepareStatement(sql);
      pstmt.setString(1, id);
      
      // 쿼리 실행
      pstmt.executeUpdate();
      
      // close
      pstmt.close();
      conn.close();
      
      // list로 이동
      response.sendRedirect("list.jsp");
    }
    else
    {
    	response.sendRedirect("content.jsp?id="+id);
    }
%> 