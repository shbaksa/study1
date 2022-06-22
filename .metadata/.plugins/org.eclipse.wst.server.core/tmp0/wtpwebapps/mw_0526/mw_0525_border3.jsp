<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div 
	{
		width:200px;
		height:40px;
	}
	#aa
	{
		border:1px solid red;
		border-radius:15px;
	}
	#bb
	{
		border:1px solid blue;
		border-radius:35px;
	} 
	#cc
	{
		border:1px solid blue;
		border-radius:10px 40px;
	}
	#dd
	{
		border:1px solid blue;
		border-radius:10px 20px 30px 40px;
	}

</style>

</head>
<body> <!-- border3.jsp -->

	<!-- border-radius:값 => 외곽선의 둥글게 -->
	<div id="aa"></div> <p>
	<div id="bb"></div> <p>
	<div id="cc"></div> <p>
	<div id="dd"></div> <p>

</body>
</html>