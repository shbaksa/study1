<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa {
     width:200px;
     height:100px;
     border:5px solid red;
     background:yellow;
     padding:10px;
   }
 </style>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {
	  $("#btn1").click(function()
	  {
		  var w=$("#aa").width();
		  var h=$("#aa").height();
		  alert(w+" "+h);
	  });
	  $("#btn2").click(function()
	  {
		  var w=$("#aa").innerWidth();
		  var h=$("#aa").innerHeight();
		  alert(w+" "+h);
	  });
	  $("#btn3").click(function()
	  {
		  var w=$("#aa").outerWidth();
		  var h=$("#aa").outerHeight();
		  alert(w+" "+h); 
	  });
  });
 </script>
</head>
<body>  <!-- width1.html -->
   <input type="button" id="btn1" value="width()">
   <input type="button" id="btn2" value="innerWidth()">
   <input type="button" id="btn3" value="outerWidth()">
   <hr>
   <div id="aa"> 학교종이 땡땡땡 </div> 
</body>
</html>









