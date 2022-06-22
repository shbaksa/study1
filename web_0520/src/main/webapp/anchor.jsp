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
	   alert("함수 호출");
   }
 </script>
</head>
<body>  <!-- anchor.jsp -->
  <!-- a태그 => 다른 문서와 연결시켜주는 태그 -->
  <a href="my.jsp"> 나의 정보 </a> <p>
  <a href="http://www.naver.com"> 네이버 </a> <p>
  <a href="javascript:test()"> 호출 </a>
</body>
</html>