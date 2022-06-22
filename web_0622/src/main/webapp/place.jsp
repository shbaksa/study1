<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function inn(my)
   {
	   my.value="";
   }
   function out(my)
   {
	  if(my.value.trim()=="")
	     my.value="이 름";
   }
 </script>
</head>
<body> <!-- place.html -->
  <input type="text" placeholder="이 름 ">
  <hr>
  <input type="text" onfocus="inn(this)" onblur="out(this)" value="이 름">
</body>
</html>


