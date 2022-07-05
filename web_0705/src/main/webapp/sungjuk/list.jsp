<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="sungjuk.Sungjuk_Dao" %>  
<%@page import="java.sql.ResultSet" %>  
<%
   Sungjuk_Dao sdao=new Sungjuk_Dao();
   ResultSet rs=sdao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- list.jsp : 테이블의 내용을 출력 -->
  <table width="400" border="1" align="center">
    <tr>
      <td> 이름 </td>
      <td> 국어 </td>
      <td> 영어 </td>
      <td> 수학 </td>
      <td> 수정 </td>
      <td> 삭제 </td>
    </tr>
  <%
   while(rs.next())
   {
  %>
    <tr>
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getString("kor")%> </td>
      <td> <%=rs.getString("eng")%> </td>
      <td> <%=rs.getString("mat")%> </td>
      <td> <a href="update.jsp?id=<%=rs.getInt("id")%>"> 수정 </a> </td>
      <td> <a href="delete.jsp?id=<%=rs.getInt("id")%>"> 삭제 </a></td>
    </tr>
  <%
   }
  %>
    <tr>
      <td colspan="6">
        <a href="write.jsp">성적입력</a>
      </td>
    </tr>
  </table>
</body>
</html>







