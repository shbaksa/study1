<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin:0px;
	}
	#first{
		width:auto;
		height:30px;
		background:purple;
		color:white;
		margin:auto;
		text-align:right;
	}
	#second{
		width:1000px;
		height:50px;
		background:black;
		margin:auto;
	}
	#third{
		width:1000px;
		height:100px;
		background:blue;
		margin:auto;
	}
	
</style>
<script>
	var height=30;
	function hide(){ // id="first" 요소의 height를 1씩 감소시킨다
		ss = setInterval(function(){
			
			height--;
			document.getElementById("first").style.height=height+"px";
			
			if(height==0){
				clearInterval(ss);
				document.getElementById("first").style.display="none";
				document.getElementById("second").style.background="yellow";
			}
			
		},2)	
		
	}


</script>
</head>
<body>	<!-- second.jsp => 1층 숨기기 -->

	<div id="first"><span onclick="hide()"> close </span></div>
	<div id="second"></div>
	<div id="third"></div>

</body>
</html>