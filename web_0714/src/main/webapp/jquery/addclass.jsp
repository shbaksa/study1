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
	   var my=document.getElementById("aa");
	   my.style.color="red";
	   my.style.fontSize="30px";
	   my.style.border="1px solid blue";
	   my.style.width="200px";
	   my.style.height="40px";
   }
 </script>
</head>
<body> <!-- addclass.jsp -->
   <!-- id="aa"인 요소의 글자색, 크기 , 외곽선, 가로, 세로를 적용 -->
   <!-- 안녕하세요 클릭되면 스타일 변경 -->
   <div id="aa" onclick="change()"> 안녕하세요 </div>
</body>
</html>
 



