<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Cookie[] cookie=request.getCookies();
    //out.print(cookie.length);
    
    for(int i=0;i<cookie.length;i++)
    {
    	out.print(cookie[i].getName());
    	out.print(cookie[i].getValue());
    	out.print("<p>");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

 