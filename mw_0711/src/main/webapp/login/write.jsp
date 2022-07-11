<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "login.BoardDao" %>    
    <%
    	BoardDao bd = new BoardDao();
    
    	bd.check_session(session,response);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/ta.css" rel="stylesheet" type="text/css" />
</head>
<body>

 
  <form method="post" action="write_ok.jsp">
    <table width="500" align="center">
    <caption><h1>게시판글작성</h1></caption>
      <tr>
        <td> 제목 </td>
        <td> <input type="text" name="title" size="40"> </td>
      </tr>
      <tr>
        <td> 내용 </td>
        <td> <textarea cols="42" rows="6" name="content"></textarea> </td>
      </tr>
      <tr>
        <td colspan="2" align="center"> <input type="submit" value="글저장"></td>     
      </tr>
    </table>
  </form>

</body>
</html>