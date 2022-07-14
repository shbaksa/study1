<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	
	$(function(){
		
		$("#aa").click(function(){
			
			$("#aa").css("color","red").css("font-size","36px").css("border","1px solid black").css("width","400px").css("height","200px");
		});
		

		$("#cc").click(function(){
			
			$("#cc").addClass("ss");
		});
		
		$("#btn1").click(function(){
			
			$("#cc").removeClass("ss");
		});
		
	});
	
	
	function change(){
		
		var my = document.getElementById("bb");
		my.style.color="blue";
		my.style.fontSize="30px";
		my.style.border="1px solid black";
		my.style.width="400px";
		my.style.height="40px";
	}

</script>

	<style>
	.ss{
		color:green;
		font-size:36px;
		border:1px solid green;
		width:400px;
		height:50px;
	}
		
	</style>
</head>
<body>	<!-- addclass.jsp -->
	
	<!-- id="aa"인 요소의 글자색, 크기, 외곽선, 가로, 세로를 적용 -->
	<!-- 안녕하세요 클릭되면 스타일 변경 -->
	
	<div id="aa">안녕하세요</div>
	<hr>
	<div id="bb" onclick="change()">안녕하세요</div>
	<hr>
	<div id="cc">안녕하세요</div>
	<hr>
	<input type="button" id="btn1" value="지우기">
	

</body>
</html>