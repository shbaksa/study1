<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- if1.jsp => if문 -->
  <c:if  test="true">
     하하하 <p>
  </c:if>
  <hr>
  <c:if test="false">
     호호호 <p>
  </c:if>
</body>
</html>



