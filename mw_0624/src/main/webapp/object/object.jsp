<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- object.jsp -->

	<!-- jsp 내장객체 => request, pageContext, session, application -->
	<!-- 변수를 만드는 방법 => setter, getter를 통해서 사용 -->
	
	<%
		request.setAttribute("name", "홍길동"); // 이전페이지 현재페이지 // 현재문서에서 존재 다른문서로 이동하면서 없어짐
		pageContext.setAttribute("name", "배트맨"); // 현재페이지만 관리 많이사용안함
		session.setAttribute("name", "슈퍼맨"); // 현재사용자가 브라우저에 들어왔을때 발생 // 사용자가 브라우저에 들어왔을때 사용자가 브라우저를 떠났을때 없어짐 // 사용자마다 다름 공유X  
		application.setAttribute("name", "원더우먼");	// 웹서버가 동작하면서 1개 발생 // 웹서버가 종료되면 없어짐 // 모든사용자가 접근가능
	%>
	
	<%
		out.print(request.getAttribute("name")); // request영역에 name이라는 변수의 값을 가져와라
		out.print(pageContext.getAttribute("name"));
		out.print(session.getAttribute("name"));
		out.print(application.getAttribute("name"));		
	%>

</body>
</html>