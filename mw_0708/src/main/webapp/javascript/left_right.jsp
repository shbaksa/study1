<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
  <style>
    #pkc {
      width:493px;
      height:30px;
      background:white;
      position:relative;
    }
    #over {
      position:absolute;
      top:5px;
      color:white;
      z-index:2;
    }
    #down {
      position:absolute;
      left:0px;
      top:0px;
      width:100px;
      height:30px;
      background:green;
      z-index:1;
    }
  </style>
  <script>
    var left=0;
    function move_right()
    {
    	left++;
    	document.getElementById("down").style.left=left+"px";
    	if(left==393)
    	{
    		clearInterval(ss);
    		ss=setInterval(move_left,10);
    	}	
    }
    function move_left()
    {
    	left--;
    	document.getElementById("down").style.left=left+"px";
    	if(left==0)
    	{
    		clearInterval(ss);
    		ss=setInterval(move_right,10);
    	}	
    }
    function start()
    {
    	ss=setInterval(move_right,10);
    }
  </script>
</head>
<body onload="start()"> <!-- left_right.jsp -->
  <div id="pkc">
    <div id="over">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세</div>
    <div id="down"></div>
  </div>
</body>
</html>