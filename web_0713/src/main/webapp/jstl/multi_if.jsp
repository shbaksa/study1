<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- multi_if.jsp -->
  <!-- 국어점수를 가지고 성적을 출력 (A,B,C,D,F) -->
  <c:set var="kor" value="75"/>
  
  <c:if test="${kor>=90}">
    성적은 A <p>
  </c:if>
  <c:if test="${kor>=80 && kor<90}">
    성적은 B <p>
  </c:if>
  <c:if test="${kor>=70 and kor<80}">
    성적은 C <p>
  </c:if>
  <c:if test="${kor>=60 && kor<70}">
    성적은 D <p>
  </c:if>
  <c:if test="${kor<60}">
    성적은 F <p>
  </c:if>
</body>
</html>










