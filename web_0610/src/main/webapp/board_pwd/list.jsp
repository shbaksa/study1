<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- list.jsp => board1에 있는 내용을 읽어와서 출력하는 문서 -->
<%@page import="java.sql.*" %>
<%
   // DB연결
   Class.forName("com.mysql.jdbc.Driver");
   String db="jdbc:mysql://localhost:3306/first";
   Connection conn=DriverManager.getConnection(db,"root","1234");
	 
   // 쿼리 작성
   String sql="select * from board1";
   
   // 심부름꾼 생성
   PreparedStatement pstmt=conn.prepareStatement(sql);
   
   // 쿼리 실행  => ResultSet결과 => 출력
   ResultSet rs=pstmt.executeQuery();
%> 
  <table width="500" border="1" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 작성자 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
    <%
      while(rs.next())
      {
    %>
    <tr>
      <td> <a href="readnum.jsp?id=<%=rs.getString("id")%>"> <%=rs.getString("title")%> </a> </td>
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getString("readnum")%> </td>
      <td> <%=rs.getString("writeday")%> </td>
    </tr>
    <%
      }
    %>
    <tr>
      <td colspan="4" align="right"> <a href="write.jsp"> 글쓰기 </a> </td>
    </tr>
  </table>
</body>
</html>





