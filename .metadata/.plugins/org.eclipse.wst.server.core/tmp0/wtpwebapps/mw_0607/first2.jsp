<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function move() {
		location = "second2.jsp?num=88&name=배트맨";
	}
</script>
</head>
<body>
	<!-- first2.jsp -->
	<!-- 이동할때 값을 전달하기 -->
	<!-- a태그 => ?변수명=값 -->
	<a href="second2.jsp?num=99&name=홍길동"> second2.jsp 이동 </a>
	<p>
	<hr>
	<!-- javascript 태그 -->
	<span onclick="move()"> second2로 이동 </span>
	<p>
	<hr>
	<!-- form태그 -->
	<form method="post" action="second2.jsp">
		<input type="text" name="name" size="4">
		<input type="text" name="num"> 
		<input type="submit" value="second2이동">
	</form>

</body>
</html>