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
     // 클릭하면 오른쪽으로 400px이동, 다시 왼쪽으로 100px이동 반복하기
     var left=100;
     function move_right()
     {
    	 left++;
    	 document.getElementById("aa").style.left=left+"px";
    	 if(left==400)
    	 {
    		 clearInterval(ss);
    		 ss=setInterval(move_left,2);
    	 }	 
     }
     function move_left()
     {
    	 left--;
    	 document.getElementById("aa").style.left=left+"px";
    	 if(left==100)
    	 {
    		 clearInterval(ss);
    		 ss=setInterval(move_right,2);
    	 }	 
     }
     function start()
     {
    	  ss=setInterval(move_right,2);
     }
 </script>
</head>
<body> <!-- move5.jsp  -->
  <!-- setInterval을 이용하여 레이어의 left값이  400이 되면 멈추기 -->
  <div id="aa"></div> <p>
  <input type="button" value="클릭" onclick="start()"><span id="bb"></span>
</body>
</html>