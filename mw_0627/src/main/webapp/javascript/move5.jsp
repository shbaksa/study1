<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	#aa{
	position:absolute;
	left:100px;
	top:100px;
	/* 크기 */
	width:50px;
	height:50px;
	background:red;
	}
	</style>
	<script>
	var left="100";
	var right="200";
	// var ss; // 생략 가능
	function move(){
		
		
		if (left <= 200){
		left++;
		document.getElementById("aa").style.left=left+"px"; // left에 400이라는 값이 전달되어야 된다.
		document.getElementById("bb").innerText=left;
		}	
		if (left == 200){
			if(right>100){
			right--;
			document.getElementById("aa").style.right=right+"px";
			document.getElementById("cc").innerText=right;
		}
			restart();
		}
	}
	function move1(){
		
	}
	
	function start(){
		
		ss = setInterval(move,20);
		
		
		// var은 선언 => 범위 {} => 전역 변수로 선언해야 된다
		// var이 생략된 채로 변수가 선언되면 무조건 전역변수로 인식
	}
	function restart(){
		sc = setInterval(move,20);
	}
	
	
	
	</script>
</head>
<body>	<!-- move2.jsp -->

	<!-- setInterval을 이용하여 레이어의 left값이 400이 되면 멈추기 -->
	<div id="aa"></div> <p>
	<input type="button" value="클릭" onclick="start()"> <span id="bb"></span> <span id="cc"></span>
	

</body>
</html>