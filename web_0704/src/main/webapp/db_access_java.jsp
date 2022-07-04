<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- db_access_java.jsp -->
 <!-- 동작부분을 클래스파일을 통해서 처리 -->
 <%@page import="web_0704.DB_Access" %>  
<%
    DB_Access da=new DB_Access();
    da.table_create();
%>
</body>
</html>