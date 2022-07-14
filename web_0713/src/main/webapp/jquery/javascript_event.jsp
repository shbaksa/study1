<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   window.onload=function() // 문서를 읽을때 실행
   {
	   document.getElementById("aa").onclick=function()
	   {
		   alert("호호");
	   }
	   document.getElementById("bb").onclick=check;
	   
	   document.getElementById("cc").onclick=function()
	   {
		   alert("밖에");
	   }

   };
   
   function check()
   {
	   alert("몰라요");
   }
   
 </script>
</head>
<body>
   <div id="aa">클릭</div> <div id="bb">클릭</div>
   <div id="cc">클릭</div>
</body>
</html>
