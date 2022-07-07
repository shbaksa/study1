<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board_page.BoardDao" %>
<%@page import="java.sql.ResultSet" %>    
<%
    BoardDao bdao=new BoardDao();
    ResultSet rs=bdao.update(request);
    rs.next();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- update.jsp (수정폼태그) -->
  <form method="post" action="update_ok.jsp">
    <input type="hidden" name="id" value="<%=rs.getString("id")%>"> 
    <table width="500" border="0">
      <tr>
        <td> 제목 </td>
        <td> <input type="text" name="title" size="40" value="<%=rs.getString("title")%>"> </td>
      </tr>
      <tr>
        <td> 이름 </td>
        <td> <input type="text" name="name" size="4" value="<%=rs.getString("name")%>"> </td>
      </tr>
      <tr>
        <td> 내용 </td>
        <td> <textarea cols="42" rows="6" name="content"><%=rs.getString("content")%></textarea> </td>
      </tr>
      <tr>
        <td> 비밀번호 </td>
        <td> <input type="password" name="pwd" size="4"> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
           <input type="submit" value="수정">
        </td>
      </tr>
    </table>
  </form>
</body>
</html>
<%
       // close()
       bdao.close();
%>