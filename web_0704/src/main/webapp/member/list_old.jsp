<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
     String db="jdbc:mysql://localhost:3306/second";
     Connection conn=DriverManager.getConnection(db,"root","1234");
	
     // 쿼리 생성
     String sql="select * from member order by id desc";
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
     
     // 쿼리 실행  => ResultSet
     ResultSet rs=pstmt.executeQuery();
     
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- list.jsp -->
  <!-- member테이블의 내용을 select 해서 전부 출력 -->
  <!-- 테이블 출력 -->
  <%
    while(rs.next())
    {
  %>
      <%=rs.getString("name")%> : <%=rs.getInt("age")%> <p>
  <%
    }
  %>
</body>
</html>