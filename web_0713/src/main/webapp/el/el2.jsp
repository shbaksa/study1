<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    // 내장객체 영역의 값을 쉽게 출력할수 있게 사용하는 표현식
    pageContext.setAttribute("name", "홍길동");
    request.setAttribute("name", "슈퍼맨");
    session.setAttribute("name", "원더우먼");
    application.setAttribute("name", "뽀로로");
    
%>
<%=pageContext.getAttribute("name") %> <p>
<%=request.getAttribute("name") %> <p>
<%=session.getAttribute("name") %> <p>
<%=application.getAttribute("name") %>
<hr>
<!-- EL 표현식으로 처리   -->
${pageScope.name} <p>
${requestScope.name} <p>
${sessionScope.name} <p>
${applicationScope.name}
<hr>
<!-- 일반적인 작업시에는 변수명만 처리 -->
${name}
<!-- 같은 이름이 존재   pageContext > request > session > application -->
</body>
</html>
<%="안녕" %>








