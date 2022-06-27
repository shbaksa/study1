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
   //var ss; // 생략 가능
   function move()
   {
	   left++;
	   document.getElementById("aa").style.left=left+"px";
   }
   function start()
   {
	   ss=setInterval(move,20);
	   // var은 선언 => 범위 { }  => 전역 변수로 선언해야 된다..
	   // var이 생략된 채로 변수가 선언되면 무조건 전역변수로 인식
   }
   function stop()  // 위에서 동작시킨 start()함수내에 있는 setInterval을 중지
   {
	   clearInterval(ss); // 괄호내에 멈추고 싶은 setInterval의 객체명이 들어가야 된다.
   }
 </script>
</head>
<body> <!-- move3.jsp  -->
  <!-- setInterval을 이용하여 레이어의 left값 변경한 후 멈추기 -->
  <div id="aa"></div> <p>
  <input type="button" value="클릭" onclick="start()">
  <input type="button" value="정지" onclick="stop()">
</body>
</html>