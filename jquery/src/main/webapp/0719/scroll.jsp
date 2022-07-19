<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    div {
      position:fixed;
      top:200px;
      width:50px;
      height:25px;
      background:yellow;
    }
    #aa {
      left:100px;
    }
    #bb {
      left:400px;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {
	   $(window).scroll(function()
	   {
		   var sc=$(window).scrollTop(); // 스크롤된 px값
		   $("#aa").text(sc);
	   });
	   $("#bb").click(function()
	   {
		   $(window).scrollTop(0);
	   });
  });
 </script>
</head>
<body>  <!-- scroll.jsp -->
   <div id="aa"></div> 
   <div id="bb"></div> 
   <hr>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
   asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>asdfasdf<p>
</body>
</html>






