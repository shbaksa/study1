<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "arraylist.StudentDao" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "arraylist.StudentDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 	
	<%
		StudentDao sdao = new StudentDao();
		sdao.getStudent(request);
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	tr,td{
		border : 1px solid black;
	}
</style>
</head>
<body>
<hr>
	<table width="700" align="center">
	<tr>
	<td>아이디</td>
	<td>나이</td>
	<td>이름</td>
	<td>번호</td>
	</tr>
	
	<c:forEach items="${list}" var="sdto">
	<tr>	
	<td>${sdto.id}</td>
	<td>${sdto.age}</td>	
	<td>${sdto.name}</td>		
	<td>${sdto.phone}</td>
	</tr>
	</c:forEach>
	
	<tr>
	<td colspan="4" align="center"><a href="a.jsp">글쓰기</a></td>
	</tr>		
	</table>
	
</body>
</html>