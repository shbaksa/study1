<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var k=1;
	function move(my){
		
		if(k==1){	
		var x = window.innerWidth; // 브라우저의 가로크기
		var y = window.innerHeight; // 브라우저의 세로크기
		
		var xx=Math.random()*x; // 0~브라우저 가로크기만큼의 임의의 값
		var yy=Math.random()*y; // 0~브라우저 세로크기만큼의 임의의 값
		
		document.getElementById("pkc").style.left=xx+"px";
		document.getElementById("pkc").style.top=yy+"px";
		}
	}
	function ok(){
		alert("성공");
	}
	function chk(){
	
		// alert(event.button);
		if(event.button==2 || event.button==1)
			k=2;
		else
			k=1;
	}
	document.onmousedown=chk;
	document.oncontextmenu=function(){ // 브라우저에서 오른쪽키 막기
		return false;
	}
</script>
<style>
	#pkc {
		position : absolute;
		width : 40px;
		height : 25px;
		background : red;
		color:white;
	}
</style>
</head>
<body>	<!-- random_move.jsp -->

	<div id="pkc" onmouseover="move(this)" onclick="ok()" >클릭</div>

</body>
</html>