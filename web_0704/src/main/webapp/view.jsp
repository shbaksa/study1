<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="web_0704.Test" %>    
<%
    Test t=new Test();
    int num=t.rand_num();
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- view.jsp -->
   임의의 값 : <%=num %> 
</body>
</html>