<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
   String name="홍길동";
   pageContext.setAttribute("name", "배트맨");
%>
<body>
 <%
    // 내장객체 4가지 객체는 저장공간을 가진다..
    //request => 현재 문서의 값을 가져온다  => spring controller에서 view로 값을 전달할때 request객체로 넘긴다
    //pageContext => 현재 문서에서 접근가능한 영역
    //session => 브라우저로서 접근시 발생 => 한 개인이 접근할 수 있는 영역 => 개인정보에 대한 내용을 저장
    //application  => 하나만 발생 => 모든 사용자이 접근 가능한 영역 => 모두에게 알릴수 있는 내용을 저장할 수 있다..
 %>
 
 
</body>
</html>