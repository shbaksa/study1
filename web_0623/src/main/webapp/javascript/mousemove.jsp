<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
   function move()
   {
	   var x=event.pageX;
	   var y=event.pageY;
	   document.getElementById("aa").innerText=x+" "+y;
	   document.getElementById("bb").style.left=x+"px";
	   document.getElementById("bb").style.top=y+"px";
   }
   document.onmousemove=move;
  </script>
  <style>
    #bb {
       position:absolute;
    }
  </style>
</head>
<body> <!-- mousemove.jsp  =>  mousemove : 마우스가 움직일때 발생되는 이벤트 -->
   <div id="aa"></div>
   <div id="bb">****</div>
</body>
</html>








