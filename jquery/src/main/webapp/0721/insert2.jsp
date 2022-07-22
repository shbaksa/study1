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
	  $(".aa").click(function()
	  {
		   $(this).insertBefore($(".aa").eq(0));
	  });
  });
 </script>
</head>
<body> <!-- insert2.jsp -->
 <!-- 메뉴를  클릭하면 제일 위로 올리기 -->
  <div class="aa"> 짜장면 </div>
  <div class="aa"> 탕수육 </div>
  <div class="aa"> 육개장 </div>
  <div class="aa"> 칼국수 </div>
  <div class="aa"> 순대국 </div>
  <div class="aa"> 참치회 </div>
  <div class="aa"> 가리비 </div>
</body>
</html>











