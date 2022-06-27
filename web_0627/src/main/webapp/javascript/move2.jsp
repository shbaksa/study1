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
     left:100px;
     top:100px;
     /* 크기 */
     width:50px;
     height:50px;
     background:red;
   }
 </style>
 <script>
   var left="100";
   function move()
   {
	   left++;
	   document.getElementById("aa").style.left=left+"px";
   }
   function start()
   {
	   setInterval(move,20);
   }
   function stop()  // 위에서 동작시킨 start()함수내에 있는 setInterval을 중지
   {
	   
   }
 </script>
</head>
<body> <!-- move2.jsp  -->
  <!-- setInterval을 이용하여 레이어의 left값 변경하기 -->
  <div id="aa"></div> <p>
  <input type="button" value="클릭" onclick="start()">
  <input type="button" value="정지" onclick="stop()">
</body>
</html>