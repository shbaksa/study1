<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.BoardDao" %>   
<%@page import="java.sql.ResultSet" %> 
<%
    // list.jsp => board테이블의 내용을 가져와서 출력
    BoardDao bdao=new BoardDao();
    ResultSet rs=bdao.list();
    
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- 출력 -->
  <table width="600" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 이 름 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
  <%
   while(rs.next())
   {
  %>  
    <tr>
      <td> <a href="readnum.jsp?id=<%=rs.getInt("id")%>"> <%=rs.getString("title")%> </a></td>
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getString("readnum")%> </td>
      <td> <%=rs.getString("writeday")%> </td>
    </tr>
  <%
   }
  %>  
   <tr>
     <td colspan="4">
       <a href="write.jsp"> 글쓰기 </a>
     </td>
   </tr>
  </table>
</body>
</html>
<%
  bdao.close();
%>








