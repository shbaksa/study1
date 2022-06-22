<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	#aa {
		
		width:100px;
		height:100px;
		border:1px solid red;
		border-radius:100px;		
		animation-name:a1;
		animation-duration:5s;
		animation-iteration-count:infinite;
		display:flex;
		align-items:center;
		justify-content:center;
		margin-left:200px;
		background:#9cacd2;
	}

	@keyframes a1 {
		0% {
			transform:translate(0px,0px);
		}
		25% {
			transform:rotate(0deg);
		}
		28% {
			transform:rotate(360deg);
		}
		30% {
			transform:translate(400px,800px);
		}
		35% {
			transform:scale(1,1);
		}
		50% {
			transform:translate(900px,150px);
		}
		55% {
			transform:scale(0.1,0.1);
		}
		70% {
			transform:translate(570px,180px);
		}
		73% {
			transform:scale(1,1);
		}
		75% {
			transform:scale(0.1,0.1);
		}
		83% {
			transform:rotate(0deg);
		}
		85% {
			transform:rotate(360deg);
		}
		100% {
			transform:translate(0px,0px);
		}	
	}
	
	
	
	/*
	@keyframes a1{
		from{			
			transform:translate(0px,0px);
		}
		to {
			transform:translate(200px,200px);
		}	
	}
	*/


</style>

</head>
<body> <!-- animation4.jsp -->

	<!-- transform:translate를 animation을 부여 -->
	
	<div id="aa"> 위치이동 </div> 
	<div id="aa"> 위치이동 </div> 
	<div id="aa"> 위치이동 </div> 
</body>
</html>