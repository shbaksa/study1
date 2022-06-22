<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- form2.jsp -->
	<!-- form태그의 역할 => action에 있는 문서에 값을 전달 --> 
	<form method="post" action="a.jsp"> <!-- 중요한데이터 -->
	<input type="text" name="name">
	<input type="submit" value="전송"> <!-- 전송된 데이터가 숨어서 간다 -->
	<!-- http://localhost:8080/mw_0523/form2.jsp  -->
	<!-- http://localhost:8080/mw_0523/a.jsp --> <!-- post 사용자가 입력한값이 브라우저에 없음 -->
	</form>
	<hr>
	<form method="get" action="a.jsp"> <!-- 노출되도 무방한 데이터 -->
	<input type="text" name="name">
	<input type="submit" value="전송"> <!-- 전송된 데이터가 주소 뒤에 붙어서 간다 -->
	<!-- http://localhost:8080/mw_0523/form2.jsp  -->
	<!-- http://localhost:8080/mw_0523/a.jsp?name=ggg --> <!-- get 사용자가 입력한값이 브라우저에 있음 -->
	</form>
	

</body>
</html>