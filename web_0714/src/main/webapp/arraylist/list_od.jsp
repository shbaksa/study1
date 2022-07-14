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
   ArrayList<StudentDto> list=sdao.getStudent();
   
   //StudentDto sdto=list.get(0);
   //out.print(sdto.getName());
   
   //out.print(list.get(1).getName());
   
   // request영역으로 list를 저장
   request.setAttribute("list",list);
%>
 <c:forEach items="${list}" var="sdto">
    ${sdto.id} : ${sdto.name} : ${sdto.age} : ${sdto.phone} <p>
 </c:forEach>
</body>
</html>







