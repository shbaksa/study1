<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>    
<%
    // 해당레코드의 비밀번호가 맞는지 확인 (폼태그비밀번호==DB비밀번호)
    // 맞다면 readnum.jsp로 이동(id값 가지고)
    // 틀리면 list.jsp로 이동
    
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");// 폼에 입력 비밀번호
    
    // DB에 있는 비밀번호를 가져오기
    String sql="select pwd from board2 where id=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    String dbpwd=rs.getString("pwd"); // Db에 있는 비밀번호
    
    // close
    rs.close();
	pstmt.close();
	conn.close();
	
    // if문을 통해 확인
    if(pwd.equals(dbpwd))
    {
    	response.sendRedirect("readnum.jsp?id="+id);
    }
    else
    {
    	response.sendRedirect("list.jsp");
    }
%>






