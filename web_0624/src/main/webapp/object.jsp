<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- object.jsp -->
  <!-- jsp 내장객체 => request, pageContext, session, application -->
  <!-- 변수를 만드는 방법 => setter, getter를 통해서 사용 -->
  <%
     request.setAttribute("name", "홍길동");  //(변수,값)
     pageContext.setAttribute("name", "배트맨");
     session.setAttribute("name", "슈퍼맨");
     application.setAttribute("name", "원더우먼");
  %>
  <%
     out.print(request.getAttribute("name"));  // request영역에 name이라는 변수의 값을 가져와라
     out.print(pageContext.getAttribute("name"));
     out.print(session.getAttribute("name"));
     out.print(application.getAttribute("name"));
  %>
</body>
</html>





