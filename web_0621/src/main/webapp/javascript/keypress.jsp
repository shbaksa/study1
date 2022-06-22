<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function chk()
   {
	   alert(event.keyCode);
   }
   function move()
   {
	   if(event.keyCode==27)  // event.keyCode : 방금입력한 키값을 가져온다..
	   {                      // keydown이벤트는 특수키의 코드값도 보내준다
		    location="http://www.naver.com";
	   }
   }
   function move2(my)
   {
	   if(event.keyCode==46)
       {
		   //my.style.display="none";
		   my.disabled="false";
       }	   
   }
 </script>
</head>
<body>  <!-- keypress.jsp  : 원하는 키값만 입력받기 -->
   <input type="text" onkeydown="chk()"> <p>
   <input type="text" onkeypress="chk()"> <p>
   <!-- 키보드 입력칸에 esc가 클릭되면 동작 -->
   <input type="text" onkeydown="move()"> * esc를 누르면 취소되고 이동됩니다. <p>
   <!-- 키보드 입력칸에 del키가 클릭되면 폼을 숨기기 -->
   <input type="text" onkeydown="move2(this)">  <p>
</body>
</html>