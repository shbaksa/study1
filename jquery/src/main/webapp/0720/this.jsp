<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {
	  // 글자를 클릭하면 빨간색으로
	  $(".aa").click(function()
	  {
		  $(this).css("color","red"); // 자기 자신의 객체
		  alert($(this).index());     // index값을 알기위해
	  });
  });
 </script>
</head>
<body>
  <div class="aa"> 짜장면 </div>
  <div class="aa"> 탕수육 </div>
  <div class="aa"> 육개장 </div>
  <div class="aa"> 칼국수 </div>
  <div class="aa"> 순대국 </div>
  <div class="aa"> 참치회 </div>
  <div class="aa"> 가리비 </div>
</body>
</html>