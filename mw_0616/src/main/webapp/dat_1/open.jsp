<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function winopen()
   {
	   // 자바스크립트 함수를 통해 새로운 창 띄우기
	   open("dat_update.jsp","","width=600,height=100");  // open("나타낼문서","창이름","창의 옵션")
   }
 </script>
</head>
<body> <!-- 0615/open.jsp -->
  <!-- 현재 브라우저에서 새로운 창을 띄우기 -->
  <span onclick="winopen()">창 띄우기</span>
</body>
</html>





