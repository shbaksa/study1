<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- choose.jsp -->
 <c:set var="kor" value="95"/>
 <c:choose>
   <c:when test="${kor>=90}">
     성적은 A <p>
   </c:when>
   <c:when test="${kor>=80}">
     성적은 B <p>
   </c:when>
   <c:when test="${kor>=70}">
     성적은 C <p>
   </c:when>
   <c:when test="${kor>=60}">
     성적은 D <p>
   </c:when>
   <c:otherwise>
     성적은 F <p>
   </c:otherwise>
 </c:choose>
</body>
</html>







