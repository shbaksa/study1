<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.Member_Dao" %>   
<%@page import="java.sql.ResultSet" %>
<%
     Member_Dao mdao=new Member_Dao();
     ResultSet rs=mdao.list();
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
  <table width="400" align="center" border="1">
    <caption><h2> 회원 명단 </h2></caption>
    <tr>
      <td> 이름 </td>
      <td> 나이 </td>
      <td> 수정 </td>
      <td> 삭제 </td>
    </tr>
  <%
    while(rs.next())
    {
  %>
     <tr>
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getInt("age")%> </td>
      <td> 수정 </td>
      <td> <a href="delete.jsp?id=<%=rs.getInt("id")%>"> 삭제 </a> </td>
    </tr>
  <%
    }
  %>
  </table>
</body>
</html>