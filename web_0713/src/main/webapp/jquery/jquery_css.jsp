<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
   // 이벤트 호출
   // $(요소).이벤트(function(){});
   // jquery의 메소드를 사용
   // $(요소).메소드명();
   $(function()
   {
	   $("#aa").css("color","red");
	   $(".aa").css("color","blue");
	   $("span").css("color","green");
   });
 </script>
</head>
<body>
   <div id="aa"> 안녕하세요 </div> <p>
   <div class="aa"> 오늘은 수요일 </div> <p>
   <span> 안녕하세요 </span> <p>
   <div id="aa">추가된 내용</div> <p>
   <div class="aa"> 내일은 수요일 </div> <p>
   
</body>
</html>






