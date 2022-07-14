<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- set2.jsp -->
  <!-- set태그를 이용하여 값의 증가 -->
  <c:set var="i" value="1"/>
  ${i} <p>
  <c:set var="i" value="${i+1}"/>
  ${i} <p>
  ${i} 개 <p>
  <c:set var="i" value="${i} 개"/>
  ${i}
</body>
</html>