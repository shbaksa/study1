<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input[type=text] {
	border:1px solid #cccccc;
	outline:none; /* 커서가 들어갔을때 외곽의 두꺼워지는 선 */
	}
	input {
		width:500px;
		height:50px;
		font-size:30px;
	}
</style>
<script>
	function inn(my){
		
		my.value="";
	}
	function out(my){
		
		if(my.value.trim()=="")
		my.value="이  름";
	}

</script>
</head>
<body>	<!-- place_html.jsp -->
	
	
	<input  type="text" placeholder="이  름">
	<hr>
	<input type="text" onfocus="inn(this)" onblur="out(this)" value="이  름">

</body>
</html>