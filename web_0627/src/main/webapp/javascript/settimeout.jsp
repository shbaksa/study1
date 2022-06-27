<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function move()
   {
	   location="http://www.naver.com";
   }
   function test()
   {
	  setTimeout(move,3000); // move함수를 3000(1/1000초) 뒤에 실행하라
   }
 </script>
</head>
<body> <!-- settimeout.jsp  => setTimeout(); -->
  <!-- setTimeout()은 특정시간후 함수를 호출 -->
  <span onclick="move()"> 이동 </span> <p>
  <span onclick="test()"> test </span>
</body>
</html>

