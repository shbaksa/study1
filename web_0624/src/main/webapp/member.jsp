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
<body> <!-- member.jsp : 회원전용 문서 -->
  <!-- session에 userid라는 변수에 값이 존재해야 접근 -->
  
  여기는 회원만 볼수 있는 문서입니다..  
</body>
</html>
<%
  }
  else  // null인 경우
  {
	  response.sendRedirect("login.jsp");
  }
%>



