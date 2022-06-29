<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
		#aa {
			color:white;
			border-radius:200px;
			width: 200px;
			height : 200px;
			background:yellow;
			animation-name:a1;
			animation-duration:10s;
			animation-fill-mode: forwards;
			animation-iteration-count:4;
			display:flex;
			align-items:center;
			justify-content:center;
			margin-left : 100px;
			}
			#aa:nth-child(1) //선택자
			{
				transform-origin:Left;
			}
			
		#bb {
			color:white;
			display:flex;
			align-items:center;
			justify-content:center;
			border-radius:200px;
			width : 200px;
			background:yellow;
			animation-name:a2;
			animation-duration:5s;
			animation-iteration-count:2;
			animation-delay: 2s;
			
			}	
			@keyframes a1 {
				from {
					
					background : red;
					transform:translate(50px,50px);
				}
				to{
					
					background : navy;
					transform:translate(900px,500px);
				}
			}
			@keyframes a2 {
				from {
					font-size : 50px;
					width : 100px;
					background : purple;
				}
				to{
					font-size : 300px;
					width : 300px;
					background : pink;
				}
			}
</style>
</script>
</head>
<body>
<div id="aa"> 또스트잇!!@!@!@</div> <p>
<div id="bb"> WOW</div>


</body>
</html>