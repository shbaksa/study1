<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="login.BoardDao" %>
<%
   BoardDao bdao=new BoardDao();
   bdao.check_session(session,response);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="write_ok.jsp">
  <table width="500" border="0" align="center">
    <caption><h2>게시판 글쓰기</h2></caption>
    <tr>
      <td> 제 목 </td>
      <td> <input type="text" name="title" id="title"> </td>
    </tr>
    <tr>
      <td> 내 용 </td>
      <td> <textarea cols="40" rows="5" name="content"></textarea> </td>
    </tr>
    <tr>
      <td colspan="2" align="center"> <input type="submit" value="글쓰기"> </td>
    </tr>
  </table>
 </form>
</body>
</html>