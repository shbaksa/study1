<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
    //login_ok.jsp
    // 아이디, 비밀번호를 가져와서  테이블을 대상으로 맞는지 틀린지
    // DB연결
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
    
    // 쿼리 실행 => ResultSet
    ResultSet rs=pstmt.executeQuery();
    
    // 조건
    if(rs.next())
    {
    	// 세션변수를 만들어준다 ("userid", "hong");
    	session.setAttribute("userid", rs.getString("userid"));
    	session.setAttribute("name", rs.getString("name"));
    	// 첫페이지로 이동
    	response.sendRedirect("main.jsp");
    }
    else
    {
    	// login.jsp로 이동
    	response.sendRedirect("login.jsp");
    }
%>








