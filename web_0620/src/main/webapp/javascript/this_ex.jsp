<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function view(n) // 마우스가 올라가있는 태그의 배경색을 노랑으로
   {
	  document.getElementsByClassName("aa")[n].style.background="yellow";
   }
 </script>
</head>
<body>
   <div class="aa" onmouseover="view(0)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(1)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(2)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(3)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(4)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(5)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(6)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(7)"> 안녕하세요 즐거운 월요일입니다 </div>
   <div class="aa" onmouseover="view(8)"> 안녕하세요 즐거운 월요일입니다 </div>
</body>
</html>