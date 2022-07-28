<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #main {
     width:300px;
     height:100px;
   /*   border:1px solid red; */
     margin-left:100px;
     overflow:hidden;
   }
   #main #sub {
     width:2450px;
     height:100px;
     /* border:1px solid blue; */
     padding-left:0px;
     margin-top:0px;
   }
   #main #sub li {
     list-style-type:none;
     display:inline-block;
     width:300px;
     height:100px;
   }
 </style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {
	  
	  setInterval(function()
	  {  
		  w=0;
		  ss=setInterval(function()
		  {   
			  w--;
			  $("#sub").css("margin-left",w);
			  if(w<=-300)
			  {
				  clearInterval(ss);
				  $("li").eq(0).insertAfter($("li").eq(7));
				  $("#sub").css("margin-left","0px");
				  console.log(w);
			  }	  
			 
		  },5);
		  console.log(w);
	  },4000);
	  
  });
 </script>
</head>
<body>
    <div id="main">
      <ul id="sub">
        <li><img src="1.jpg" width="300" height="100"></li><li><img src="2.jpg" width="300" height="100"></li><li><img src="3.jpg" width="300" height="100"></li><li><img src="4.jpg" width="300" height="100"></li><li><img src="5.jpg" width="300" height="100"></li><li><img src="6.jpg" width="300" height="100"></li><li><img src="7.jpg" width="300" height="100"></li><li><img src="8.jpg" width="300" height="100"></li>
      </ul>
    </div>
</body>
</html>













