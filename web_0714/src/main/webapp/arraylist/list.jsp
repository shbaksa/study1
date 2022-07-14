<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     

</head>
<body>
<%@page import="arraylist.StudentDao" %>
<%@page import="java.util.ArrayList"%>
<%@page import="arraylist.StudentDto" %>
<%
   StudentDao sdao=new StudentDao();
   sdao.getStudent(request);
%>
 <c:forEach items="${list}" var="sdto">
    ${sdto.id} : ${sdto.name} : ${sdto.age} : ${sdto.phone} <p>
 </c:forEach>
 <hr>
 <c:forEach var="i" begin="0" end="${list.size()-1}" >
 ${list.get(i).name}
 </c:forEach>
</body>
</html>







