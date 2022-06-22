<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
	function test() 
	{
		alert("함수 호출")
	}
	</script>
</head>
<body> <!-- anchor.jsp -->
<!-- a태그 => 다른 문서와 연결시켜주는 태그 -->
<a href="my.jsp"><font size="7">나의 정보</font></a><p>
<!-- http://192.168.0.38:8080/web_0520/my.jsp -->
<a href="www.naver.com"> 네이버 창안열림 </a><p>
<!-- http://localhost:8080/mw_0520/www.naver.com < 이경우는 문서를 불러올려고 함  -->
<a href="http://www.naver.com"><font size="6"> 네이버 </font></a><p>
<!-- 다른 사이트를 이동하고 싶을때는 http:// 붙이기 -->
<a href="javascript:test()"> 호출 </a><p> <!-- 자바 메소드 불러오기 개념 -->


</body>
</html>