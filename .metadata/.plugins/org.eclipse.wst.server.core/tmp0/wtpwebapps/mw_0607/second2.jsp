<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- second2.jsp -->
	second2.jsp입니다 <p>
	<!-- 이전문서에 넘어오는 값을 받기 -->
	<%
		// request 객체로 받는다.
		// 한글이 포함된 데이터가 존재한다면
		// request.getParameter() 이전에
		request.setCharacterEncoding("utf-8"); // 가장 처음에 적어줘야함
		String num=request.getParameter("num");
		out.print("넘어온 값 : "+num+"<p>"); 		
		String name=request.getParameter("name");
		out.print("넘어온 이름 : "+name);
	%>


</body>
</html>