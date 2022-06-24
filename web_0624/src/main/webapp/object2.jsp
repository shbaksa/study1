<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
     out.print(request.getAttribute("name"));  // request영역에 name이라는 변수의 값을 가져와라
     out.print(pageContext.getAttribute("name"));
     out.print(session.getAttribute("name"));
     out.print(application.getAttribute("name"));
  %>
</body>
</html>