<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  if(session.getAttribute("userid") != null)
  {
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   회원이 보는 또 다른 문서
</body>
</html>
<%
  }
  else  // null인 경우
  {
	  response.sendRedirect("login.jsp");
  }
%>