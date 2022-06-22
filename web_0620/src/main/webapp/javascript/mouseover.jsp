<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function change()
   {
	   // 마우스가 올라왔을때 여러가지 속성을 변경시킬때
	   document.getElementById("aa").style.background="yellow";
	   document.getElementById("aa").style.color="red";
	   document.getElementById("aa").style.fontSize="30px";
   }
   function test()
   {
	   document.getElementById("aa").style.background="white";
	   document.getElementById("aa").style.color="black";
	   document.getElementById("aa").style.fontSize="15px";
   }
   function change2(my)
   {
	   my.style.background="green";
	   my.style.color="pink";
	   my.style.fontSize="12px";
   }
   function test2(my)
   {
	   my.style.background="white";
	   my.style.color="black";
	   my.style.fontSize="15px";
   }
 </script>
</head>
<body>  <!-- mouseover.jsp -->
  <!-- 마우스오버 이벤트태그와 변경할 태그가 다를때 -->
  <div onmouseover="change()" onmouseout="test()"> 마우스를 올리세요 </div>
  <div id="aa"> 감사합니다 </div>
  <hr>
  <!-- 마우스오버 이벤트태그와 변경할 태그가 같을때 -->
  <div onmouseover="change2(this)" onmouseout="test2(this)"> 안녕하세요 </div>
</body>
</html>


