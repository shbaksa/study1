<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- forEach2.jsp -->
  <!-- 반복횟수를 알지 못할 경우 -->
<%
    String[] name={"홍길동","슈퍼맨","뽀로로","배트맨","원더우먼","에디","토끼"};
    request.setAttribute("name", name); // forEach에 접근하기
    // for를 사용
    for(int i=0;i<name.length;i++)
    	out.print(name[i]+" ");
%>  
<hr>
<!-- forEach를 이용하여 출력 (배열의 크기가 고정) -->
<c:forEach var="i" begin="0" end="4">
   ${name[i]}
</c:forEach>
<hr>
<!-- forEach를 이용하여 출력 (배열의 크기가 일정하지 않다) -->
<c:forEach items="${name}" var="aa">
   ${aa} 
</c:forEach>
</body>
</html>









