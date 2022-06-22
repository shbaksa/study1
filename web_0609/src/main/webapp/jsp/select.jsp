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
     <td> 수정 </td>
   </tr>
  <%
   while(rs.next())
   {
  %>
   <tr> <!-- 번호를 클릭했을때  delete.jsp로 이동 -->
     <td> <a href="delete.jsp?bunho=<%=rs.getString("bunho")%>"> <%=rs.getString("bunho")%> </a> </td> <!-- 단순 출력일경우에는 String으로 받아도 된다.. -->
     <td> <%=rs.getString("name")%> </td>
     <td> <%=rs.getString("phone")%> </td>
     <td> <%=rs.getString("age")%> </td>
     <td> <a href="update.jsp?bunho=<%=rs.getString("bunho")%>"> 수정 </a> </td>
   </tr>
  <%
   }
  %>
   <tr>  <!-- 입력링크가 있는 행 -->
    <td colspan="5" align="center"> <a href="input.jsp"> 입력 </a> </td>
   </tr>
 </table>
</body>
</html>











