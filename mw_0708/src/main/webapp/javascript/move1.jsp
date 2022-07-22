<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #main {
       margin-left:200px;
       width:150px;
       height:30px;
       border:1px solid red;
       overflow:hidden;   
       position:relative;
    }
    #sub {
       margin-left:10px;
       position:absolute;
       top:0px;
    }
    #sub > div {
       margin-top:3px;
    }
  </style>
  <script>
    var t=1;
    function move()
    {
    	t--;
    	document.getElementById("sub").style.top=t+"px";
    	if(t%24 == 0 )
    	{
    		clearInterval(ss);
    		setTimeout(start,1000);
    	}	
    	if(t==-195)
    		t=1;
    	
    	document.getElementById("aa").innerText=t;
    }
    function start()
    {
    	ss=setInterval(move,50);
    }
  </script>
</head>
<body onload="start()">
   <span id="aa"></span>
   <div id="main">
     <div id="sub">
       <div> 해운대 해수욕장 </div>
       <div> 망상 해수욕장 </div>
       <div> 속초 해수욕장 </div>
       <div> 장사 해수욕장 </div>
       <div> 연포 해수욕장 </div>
       <div> 진하 해수욕장 </div>
       <div> 일광 해수욕장</div>
       <div> 송도 해수욕장 </div>
     </div>
   </div>
</body>
</html>