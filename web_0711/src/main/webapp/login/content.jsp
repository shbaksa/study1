<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.ResultSet" %>
<%@page import="login.BoardDao" %>
<%  
    BoardDao bdao=new BoardDao();
    bdao.check_session(session,response);
    ResultSet rs=bdao.content(request);
    rs.next();
%>    
  <table width="500" border="1" align="center">
    <tr>
      <td> 제 목 </td>
      <td> <%=rs.getString("title")%> </td>
    </tr>
    <tr>
      <td> 이 름 </td>
      <td> <%=rs.getString("name")%> </td>
    </tr>
    <tr>
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
        <a href="list.jsp"> 목록 </a>
      <%
      String ss=session.getAttribute("userid").toString(); // 현재 접속한 사용자 아이디
      String rr=rs.getString("userid"); // DB에 있는 이글의 아이디
      
      if(ss.equals(rr))  // 나의 글이냐?
      {
      %>  
        <a href="update.jsp?id=<%=rs.getInt("id")%>"> 수정 </a>
        <a href="delete.jsp?id=<%=rs.getInt("id")%>"> 삭제 </a>
      <%
      }
      %>  
      </td>
    </tr>
   </table> 
 
</body>
</html>





