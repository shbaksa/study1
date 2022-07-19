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
  <script>
   function check()
   {
	    var sc=document.documentElement.scrollTop;// 스크롤된 px값
	    document.getElementById("aa").innerText=sc;
   }
   function move()
   {
	   document.documentElement.scrollTop=0;
   }
   window.onscroll=check;
  </script>
</head>
<body> <!-- scroll2.jsp -->
   <div id="aa"></div> 
   <div id="bb" onclick="move()"></div>
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







