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

		request.setAttribute("name","홍길동");
		pageContext.setAttribute("name","홍길동1");
		session.setAttribute("name","홍길동2");
		application.setAttribute("name","123");

		
%>

<%

	out.print(request.getAttribute("name"));
	out.print(session.getAttribute("name"));
	out.print(pageContext.getAttribute("name"));
	out.print(application.getAttribute("name"));
%>


</body>
</html>