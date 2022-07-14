<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- list.jsp => board1에 있는 내용을 읽어와서 출력하는 문서 -->
<%@page import="board.BoardDao" %>
<%
    BoardDao bdao=new BoardDao();
    bdao.list(request);
    // list메소드에서 레코드 전체를 request영역에 저장
%> 
  <table width="500" border="1" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 작성자 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
   <c:forEach items="${list}" var="bdto">
     <tr>
      <td> <a href="readnum.jsp?id=${bdto.id}"> ${bdto.title} </a> </td>
      <td> ${bdto.name} </td>
      <td> ${bdto.readnum} </td>
      <td> ${bdto.writeday } </td>
    </tr>
   </c:forEach>
    <tr>
      <td colspan="4" align="right"> <a href="write.jsp"> 글쓰기 </a> </td>
    </tr>
    
  </table>
</body>
</html>





