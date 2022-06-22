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
		animation-duration:0.2s;
		animation-iteration-count:infinite;
		display:flex;
		align-items:center;
		justify-content:center;
		margin-left:200px;
	}

	
	@keyframes a1{
		from{		/* scale(x,y), scaleX(x), scaleY(Y) */
			transform:scale(1,1);
		}
		to {
			transform:scale(0.1,0.1);
		}	
	}
	


</style>

</head>
<body> <!-- animation3.jsp -->

	<!-- transform:scale를 animation을 부여 -->
	
	<div id="aa"> 작아지기 </div> 
	<div id="aa"> 작아지기 </div> 
	<div id="aa"> 작아지기 </div> 
</body>
</html>