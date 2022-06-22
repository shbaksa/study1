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
    String pwd=request.getParameter("pwd"); // 폼태그의 입력한 비밀번호
    
    // DB에 있는 비밀번호 가져오기
    String sql="select pwd from gesipan where id=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    String dbpwd=rs.getString("pwd");
    if(pwd.equals(dbpwd))
    {
      // 쿼리 생성
      sql="update gesipan set name=?, title=?, content=?, email=? where id=?";
    
      // 심부름꾼 생성
      pstmt=conn.prepareStatement(sql);
      pstmt.setString(1, name);
      pstmt.setString(2, title);
      pstmt.setString(3, content);
      pstmt.setString(4, email);
      pstmt.setString(5, id);
    
      // 쿼리 실행
      pstmt.executeUpdate();
    
      // close
      pstmt.close();
      conn.close();
      
      // content로 이동
      response.sendRedirect("content.jsp?id="+id);
    }
    else
    {
    	// close
        pstmt.close();
        conn.close();
        
        // content로 이동
        response.sendRedirect("update.jsp?id="+id);
    }
%>







