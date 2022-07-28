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
     margin-left:200px;
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
		   $("#sub").animate(
		   {
			   marginLeft:"-300px"
		   },1000,function()
		          {
			          $("li").eq(0).insertAfter($("li").eq(7));
				      $("#sub").css("margin-left","0px");
		          });
	 		 
	  },4000);
	  
  });
 </script>
</head>
<body>
    <div id="main">
      <ul id="sub">
        <li><img src="img/1.jpg" width="300" height="100"></li><li><img src="img/2.jpg" width="300" height="100"></li><li><img src="img/3.jpg" width="300" height="100"></li><li><img src="img/4.jpg" width="300" height="100"></li><li><img src="img/5.jpg" width="300" height="100"></li><li><img src="img/6.jpg" width="300" height="100"></li><li><img src="img/7.jpg" width="300" height="100"></li><li><img src="img/8.jpg" width="300" height="100"></li>
      </ul>
    </div>
</body>
</html>













