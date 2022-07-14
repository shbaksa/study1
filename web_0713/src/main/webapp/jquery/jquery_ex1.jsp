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
	  $("#aa").mouseover(function()
	  {
		  $("#aa").css("color","red");
	  });
	  $("#aa").mouseout(function()
	  {
		  $("#aa").css("color","black");
	  });
	  
	  $("img").mouseover(function()
	  {
		  $("img").attr("src","bg4.jpg");
	  });
	  $("img").mouseout(function()
	  {
		  $("img").attr("src","bg3.jpg");
	  });
  });
 </script>
</head>
<body>
   <div id="aa"> 안녕하세요 </div> <p>
   <img src="bg3.jpg" width="100">
</body>
</html>

