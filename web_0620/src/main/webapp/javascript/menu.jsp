<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   li {
     list-style-type:none;
     display:inline-block;
     width:120px;
     height:30px;
     border:1px solid red;
     text-align:center;
     padding-top:10px;
   }
 </style>
 <script>
   function over(my)
   {
	   my.style.background="red";
	   my.style.color="white";
   }
   function out(my)
   {
	   my.style.background="white";
	   my.style.color="black";
   }
 </script>
</head>
<body>
   <ul>
     <li onmouseover="over(this)" onmouseout="out(this)"> 농산물 </li>
     <li onmouseover="over(this)" onmouseout="out(this)"> 수산물 </li>
     <li onmouseover="over(this)" onmouseout="out(this)"> 가공품 </li>
     <li onmouseover="over(this)" onmouseout="out(this)"> 건강식품 </li>
     <li onmouseover="over(this)" onmouseout="out(this)"> 기타등등 </li>
   </ul>
   <hr>
   <img src="bg3.jpg" width="200" onmouseover="over1(this)" onmouseout="out1(this)">
   
   <script>
     function over1(my)
     {
    	 my.src="bg4.jpg";
     }
     function out1(my)
     {
    	 my.src="bg3.jpg";
     }
   </script>
</body>
</html>




