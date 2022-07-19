<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#aa {
	width: 200px;
	height: 100px;
	border: 5px solid red;
	/*background:blue;*/
	padding: 10px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {

		$("#btn1").click(function() {
			
			var w = $("#aa").width();	// width		
			var h = $("#aa").height(); // height
			alert(w+" "+h);
		});
		
		$("#btn2").click(function() {
			
			var w = $("#aa").innerWidth(); // width	+ padding
			var h = $("#aa").innerHeight(); // height + padding 
			alert(w+" "+h);
		});
		
		$("#btn3").click(function() {
			
			var w = $("#aa").outerWidth();	// width + padding + border
			var h = $("#aa").outerHeight(); // height + padding + border
			alert(w+" "+h);
		});

	});
</script>
</head>
<body>
	<!-- width1.jsp --> <!-- 가로세로 길이 구하기 -->

	<input type="button" id="btn1" value="width(),height()">
	<input type="button" id="btn2" value="innerWidth(),innerHeight()">
	<input type="button" id="btn3" value="outerWidth(),outerHeight()">

	<hr>

	<div id="aa">학교종이 땡땡땡</div>
</body>
</html>