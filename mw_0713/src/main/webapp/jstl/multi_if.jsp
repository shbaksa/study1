<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- multi_if.jsp -->

	<!-- 국어점수를 가지고 성적을 출력 (A,B,C,D,F) -->
	
	<c:set var="kor" value="80"/>
	
	<c:if test="${kor>=90 }">
	성적은 A
	</c:if>
	<c:if test="${kor<90 && kor>=80 }">
	성적은 B
	</c:if>
	<c:if test="${kor<80 && kor>=70 }">
	성적은 C
	</c:if>
	<c:if test="${kor<70 && kor>=60 }">
	성적은 D
	</c:if>
	<c:if test="${kor<60 }">
	성적은 F
	</c:if>
	
	<hr>
	
</body>
</html>