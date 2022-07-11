<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="login.BoardDao" %> 
<%@page import="java.sql.ResultSet" %>   
<%
    // member_board테이블 작업
    BoardDao bdao=new BoardDao();
    bdao.check_session(session,response); // 회원전용문서에 항상 적용
    ResultSet rs=bdao.list();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <table width="500" border="1" align="center">
     <caption> <h2> 게시판 </h2></caption>
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
       <td> <a href="readnum.jsp?id=<%=rs.getInt("id")%>"> <%=rs.getString("title")%> </a> </td>
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







