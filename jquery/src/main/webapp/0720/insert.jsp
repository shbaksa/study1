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
	  // 동일한 이름을 가진 요소들 중에서 특정 요소로 접근하기 => eq(index)
	  // $(".aa").eq(3).css("color","red");  // document.getElementsByClassName("aa")[3].style.color="red";
	  $("#btn").click(function()
	  {
		  // index 3번을 0번 앞에 넣기
		  $(".aa").eq(3).insertBefore($(".aa").eq(0));
	  });
	  $("#btn2").click(function()
	  {
		  // index 3번을 0번 앞에 넣기
		  $(".aa").eq(3).insertAfter($(".aa").eq(0));
	  });
  });
 </script>
</head>
<body> <!-- insert.jsp -->
  <input type="button" id="btn" value="insertBefore">
  <input type="button" id="btn2" value="insertAfter">
  <hr>
  <div class="aa"> 짜장면 </div>
  <div class="aa"> 탕수육 </div>
  <div class="aa"> 육개장 </div>
  <div class="aa" style="color:blue"> 칼국수 </div>
  <div class="aa"> 순대국 </div>
  <div class="aa"> 참치회 </div>
  <div class="aa"> 가리비 </div>
</body>
</html>