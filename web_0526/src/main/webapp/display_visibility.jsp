<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa {
     display:none;
   }
   #bb {
     visibility:hidden;
   }
 </style>
</head>
<body> <!-- display_visibility.jsp -->
  <!-- 요소를 숨기는 속성 : display, visibility 둘다-->
  <div id="aa"> 안녕하세요 </div> <p>
  <div id="bb"> 감사합니다 </div>
  <hr>
  <div>짜장면</div>
  <div id="aa">탕수육</div>
  <div>팔보채</div>
  <div>라조기</div>
  <hr>
  <div>짜장면</div>
  <div id="bb">탕수육</div>
  <div>팔보채</div>
  <div>라조기</div>
</body>
</html>