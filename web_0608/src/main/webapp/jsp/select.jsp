<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- select.jsp -->
 <!-- member테이블 내용을 읽어와서 웹문서에 출력하기 -->
 <%@page import="java.sql.*" %>
 <%
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
	 String db="jdbc:mysql://localhost:3306/first";
	 Connection conn=DriverManager.getConnection(db,"root","1234");
	 
	 // 쿼리 생성
	 String sql="select * from member";
	 
	 // 2번 심부름꾼 생성
	 PreparedStatement pstmt=conn.prepareStatement(sql);
	 
	 // 쿼리 실행
	 ResultSet rs=pstmt.executeQuery();
 %>
 <table width="400" border="1">
   <tr>
     <td> 번호 </td>
     <td> 이름 </td>
     <td> 전화 </td>
     <td> 나이 </td>
   </tr>
  <%
   while(rs.next())
   {
  %>
   <tr>
     <td> <%=rs.getString("bunho")%> </td> <!-- 단순 출력일경우에는 String으로 받아도 된다.. -->
     <td> <%=rs.getString("name")%> </td>
     <td> <%=rs.getString("phone")%> </td>
     <td> <%=rs.getString("age")%> </td>
   </tr>
  <%
   }
  %>
 </table>
</body>
</html>











