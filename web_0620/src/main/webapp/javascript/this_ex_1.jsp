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
   <div onmouseover="view(0)"> 0 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(1)"> 1 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(2)"> 2 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(3)"> 3 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(4)"> 4 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(5)"> 5 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(6)"> 6 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(7)"> 7 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
   <div onmouseover="view(8)"> 8 </div> <span class="aa"> 안녕하세요 즐거운 월요일입니다 </span>
</body>
</html>