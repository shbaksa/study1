<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa::before {
     content:"밤을 다스리는 ";
   }
   #aa::after {
     content: "멋지당";
   }
   #bb::before {
     content: "하늘을 날으는";
   }
   #bb::after {
     content: "멋있다";
   }
 </style>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {
	  $("#cc").before("개구쟁이 ");
	  $("#cc").after(" 놀자");
	  
	  $("#btn").click(function()
	  {
		  $("#dd").before($(".a1"));
		  $("#dd").after($(".a2"));
	  });
	  $("#source").click(function()
	  {
		  alert($("body").html());
	  });
  });
 </script>
</head>
<body> <!-- after_before.jsp -->
  <input type="button" id="source" value="소스보기">
  <!-- 요소 앞뒤로 문자를 추가 : css -->
   <div id="aa">배트맨</div> <p>
   <div id="bb">슈퍼맨</div>
   <hr>
  <!-- jquery의 메소드를 통해서 앞 뒤 문자를 추가 -->
   <span id="cc">뽀로로</span> <p>
   <hr>
  <!-- 텍스트가 아닌 태그(요소)도 가능 -->
   <span id="dd"> 원더우먼 </span>
   <hr>
   <input type="button" id="btn" value="눌러보세요">
   <span class="a1"> 하하하 </span>
   <span class="a2"> 호호호 </span>
</body>
</html>






