<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="insert1.jsp">
	제목 <input type="text" name="title"> <p>
	저자 <input type="text" name="name"> <p>
	가격 <input type="text" name="price"> <p>
	출판날짜 <input type="text" name="writeday"> <p>			
	
	<input type="submit" value="전송">
	
	</form>
	
</body>
</html>