<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   var chk=0;
   function change(my)
   {
	   if(chk%2 == 0)
          my.src="bg2.jpg";
	   else
	      my.src="bg1.jpg";
		 
	   chk++;
   }
 </script>
</head>
<body> <!-- toggle.html -->
   <!-- click이벤트를 통해서 그림을 변경 -->
   <img src="bg1.jpg" width="100" onclick="change(this)">
</body>
</html>