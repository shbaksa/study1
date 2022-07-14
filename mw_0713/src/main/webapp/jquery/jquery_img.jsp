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
		
		$("#aa").mouseover(function(){
			
			$("#aa").css("color","red").css("font-size","36px");
		});
		$("#aa").mouseout(function(){
			$("#aa").css("color","black").css("font-size","12px");
		});
		$("#bb").mouseover(function(){
			
			$("#bb").attr("src","bg4.jpg");
		}); 
		$("#bb").mouseout(function(){
			$("#bb").attr("src","bg3.jpg");
		});
		
		
		
	});
	
</script>
</head>
<body>

	
	<div id="aa">안녕하세요</div><p><hr>
	<img src="bg3.jpg" id="bb">
	
	
	



</body>
</html>