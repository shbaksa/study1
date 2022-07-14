<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
   window.onload=function()
   {
	   document.getElementById("aa").style.color="red";
	   document.getElementsByClassName("aa")[0].style.color="blue";
	   document.getElementsByTagName("span")[0].style.color="green";
   };
 </script>
</head>
<body>
   <div id="aa"> 안녕하세요 </div> <p>
   <div class="aa"> 오늘은 수요이 </div> <p>
   <span> 안녕하세요 </span>
</body>
</html>






