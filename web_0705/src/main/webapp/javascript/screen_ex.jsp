<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    body {
      margin:0px;
    }
    #pkc {
      position:absolute;
      /* left:??px; */
      top:200px;
      width:200px;
      height:100px;
      background:red;
    }
  </style>
  <script>
   function init()
   {
	   var bw=innerWidth;
	    
	   var lw=200;
	   var left=(bw/2)-(lw/2);
	   document.getElementById("pkc").style.left=left+"px";
   }
   window.onresize=init; // 브라우저 크기를 바꿀때 init함수 실행
  </script>
</head>
<body onload="init()"> <!-- screen_ex.jsp  => 레이어를 브라우저의 가로기준으로 중앙에 배치 -->
  <div id="pkc"></div>
</body>
</html>





