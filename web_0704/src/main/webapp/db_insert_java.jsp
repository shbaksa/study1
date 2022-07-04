<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- db_insert_java.jsp -->
 <!-- test테이블에 '홍길동', 33 입력하기 -->
 <!-- DB_Access.java에 메소드를 추가하여 작업하기 -->
 <%@page import="web_0704.DB_Access" %>
 <%
    DB_Access da=new DB_Access();
    da.insert();
 %>
</body>
</html>