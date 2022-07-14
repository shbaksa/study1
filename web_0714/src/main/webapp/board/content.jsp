<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- content.jsp => 하나의 레코드만 읽어와서 출력 -->
<%@page import="board.BoardDao" %>
<%
    BoardDao bdao=new BoardDao();
    bdao.content(request);
    // request값을 매개변수로 보내서 dao에서 
    // request.setAttribute()이 실행
%>
 <table width="500" border="1" align="center">
   <tr>
     <td> 제 목 </td>
     <td> ${bdto.title} </td>
   </tr>
   <tr>
     <td> 작성자 </td>
     <td> ${bdto.name} </td>
   </tr>
   <tr height="200">
     <td> 내 용 </td>
     <td> ${bdto.content} </td>
   </tr>
   <tr>
     <td> 조회수 </td>
     <td> ${bdto.readnum} </td>
   </tr>
   <tr>
     <td> 작성일 </td>
     <td> ${bdto.writeday} </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
      <a href="update.jsp?id=${bdto.id}"> 수정 </a>
      <a href="list.jsp"> 목록 </a>
      <a href="delete.jsp?id=${bdto.id}"> 삭제 </a>
     </td>
   </tr>
 </table>
</body>
</html>





