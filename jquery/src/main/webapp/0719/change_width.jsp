<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa {
     width:50px;
     height:50px;
     background:red;
   }
 </style>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {
	  var w=50;
	  $("#btn").click(function()
	  {
		  ss=setInterval(function()
		  {
			  w++;
			  $("#aa").width(w); // document.getElementById("aa").style.width=w+"px";
			  $("#aa").height(w); // document.getElementById("aa").style.height=w+"px";
			  if(w==400)
				  clearInterval(ss);
		  },50);
	  });
	  
  });
 </script>
</head>
<body> <!-- change_width.jsp -->
  <input type="button" id="btn" value="변경">
  <hr>
  <div id="aa"></div>
</body>
</html>