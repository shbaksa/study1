<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board_page.BoardDao" %> 
<%@page import="java.sql.ResultSet" %>   
<%
     // 하나의 레코드를 읽어와서 출력하기
     BoardDao bdao=new BoardDao();
     ResultSet rs=bdao.content(request);
     rs.next();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- content.jsp => 하나의 레코드만 읽어와서 출력 -->
 
 <table width="500" border="1" align="center">
   <tr>
     <td> 제 목 </td>
     <td> <%=rs.getString("title")%> </td>
   </tr>
   <tr>
     <td> 작성자 </td>
     <td> <%=rs.getString("name")%> </td>
   </tr>
   <tr height="200">
     <td> 내 용 </td>
     <td> <%=rs.getString("content").replace("\r\n","<br>")%> </td>
   </tr>
   <tr>
     <td> 조회수 </td>
     <td> <%=rs.getString("readnum")%> </td>
   </tr>
   <tr>
     <td> 작성일 </td>
     <td> <%=rs.getString("writeday")%> </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
      <a href="update.jsp?id=<%=rs.getString("id")%>"> 수정 </a>
      <a href="list.jsp"> 목록 </a>
      <a href="javascript:del()"> 삭제 </a>
      <!-- <a href="#" onclick="del()"> -->
     </td>
   </tr>
   <tr id="delform">
     <td colspan="2" align="center">
       <form method="post" action="delete.jsp">
         <input type="hidden" name="id" value="<%=rs.getString("id")%>">
         <input type="password" name="pwd" placeholder="비밀번호">
         <input type="submit" value="삭제">
       </form>
     </td>
   </tr>
 </table>
 <script>
  function del()
  {
	  document.getElementById("delform").style.display="table-row";
  }
 </script>
 <style>
   #delform {
     display:none;
   }
 </style>
</body>
</html>
<%
   bdao.close();
%>





