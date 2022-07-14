<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
   $(function()
   {
	   // $(요소).이벤트(function(){});
	   $("#btn1").click(function()
	   {
		   $("#aa").css("color","blue");
		   $("#aa").css("font-size","30px");
	   });
	   
	   $("#btn2").click(function()
	   {
		   $("#bb").attr("type","password");
	   });
   });
   
 </script>
</head>
<body>
  <input type="button" id="btn1" value="버튼1"><input type="button" id="btn2" value="버튼2"> 
  <hr>
  <div id="aa"> 안녕하세요 </div>
  <input type="text" id="bb">
</body>
</html>




