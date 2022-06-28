<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function input()
    { 
    	// 숫자를 문자
    	// 1. 숫자+""
    	// 2. toString()
    	
    	var today=new Date();         
    	var hh=today.getHours().toString();
    	var mm=today.getMinutes().toString();
    	var ss=today.getSeconds().toString();
    	//PadStart();
    	if(hh.length==1)
    		hh="0"+hh;
    	if(mm.length==1)
    		mm="0"+mm;
    	if(ss.length==1)
    		ss="0"+ss;
    	
    	document.getElementById("aa").innerText=hh+" : "+mm+" : "+ss;
    }
    function start()
    {
    	setInterval(input,1000);
    }
  </script>
</head>
<body onload="start()"> <!-- date2.jsp -->
  현재 시간 : <span id="aa"></span>  <p>
  <input type="button" onclick="start()" value="클릭">
</body>
</html>





