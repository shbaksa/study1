<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- el1.jsp -->
<%
   String name="홍길동";
   int kor=99;
   
   request.setAttribute("name", "슈퍼맨");
%>
<%=name%> <p>
<%=request.getAttribute("name") %>
</body>
</html>










