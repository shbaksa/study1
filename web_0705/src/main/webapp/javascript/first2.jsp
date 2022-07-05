<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #pkc {
     position:absolute;
     left:-300px;
     top:200px;
     width:300px;
     height:200px;
     background:yellow;
   } /* 레이어의 위치를 브라우저 좌측에 숨김 */
 </style>
 <script>
  var left=-300;
 
  function init() // 레이어를 사용자가 볼수있게 오른쪽으로 이동을 시킨다..
  {
	  ss=setInterval(function()
	  {
		  left++;
		  document.getElementById("pkc").style.left=left+"px";
		  if(left==400)
			 clearInterval(ss); 
	  },10);
  }
  function layer_close()
  {
	  document.getElementById("pkc").style.visibility="hidden";
  }
 </script>
</head>
<body onload="init()"> <!-- first.jsp => 왼쪽에서 서서히 나타나는 레이어 -->
  <div id="pkc">
     여기는 공지사항
     <div align="right" onclick="layer_close()"> X </div>
  </div>
  
</body>
</html>




