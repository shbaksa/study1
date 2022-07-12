<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- list.jsp => board1에 있는 내용을 읽어와서 출력하는 문서 -->
<%@page import="board.BoardDao" %>
<%@page import="java.sql.ResultSet" %>
<%
   BoardDao bdao=new BoardDao();
   ResultSet rs=bdao.list();
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





