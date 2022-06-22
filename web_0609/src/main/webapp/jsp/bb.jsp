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
     String bunho=request.getParameter("bunho");
     String sql="delete from member where bunho="+bunho;
     
     out.print(sql);
   %>
</body>
</html>