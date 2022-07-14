<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- out.jsp -->
  <!-- 출력하기 -->
  <%
     request.setAttribute("name", "슈퍼맨");
  %>
  <c:out value="안녕하세요"/> <p>
  <c:out value="감사합니다"></c:out> <P>
  <c:out value="${name}"/> <p>
  ${name} <p>
  
  <c:out value="${kor}" default="없음"/>
  
</body>
</html>




