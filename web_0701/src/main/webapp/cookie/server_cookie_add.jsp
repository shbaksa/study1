<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 쿠키 클래스를 이용하여 객체 생성
    Cookie cookie=new Cookie("name","홍길동1");
    // 쿠키의 존재 시간
    cookie.setMaxAge(600);
    // 클라이언트에 전달
    response.addCookie(cookie);
    
    cookie=new Cookie("age","22");
    cookie.setMaxAge(600);
    response.addCookie(cookie);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- server_cookie_add.jsp => java에서 cookie객체를 생성 클라이언트에 전달 -->

</body>
</html>