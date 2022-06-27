<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa {
     position:absolute;
     left:200px;
     top:200px;
     width:300px;
     height:200px;
     background:yellow;
   }
 </style>
 <script>
   function hide()
   {
	   document.getElementById("aa").style.visibility="hidden";
   }
   function test()
   {  // 5초뒤에 hide() 실행
	   setTimeout(hide,5000);
   }
 </script>
</head>
<body onload="test()"> <!-- auto_display.jsp -->
  <div id="aa">
    중요한 사항입니다.!! <p>
    오늘은 월요일입니다. 켁 <p>
    열심히 합시다
  </div>
</body>
</html>