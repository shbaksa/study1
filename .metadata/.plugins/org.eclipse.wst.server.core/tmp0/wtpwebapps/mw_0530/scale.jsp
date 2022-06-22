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
		width:100px;
		height:100px;
		background:red;
	}
	#bb 
	{
		position:absolute;
		left:500px;
		transform:scale(2,2);	
	}
	#cc 
	{
		position:absolute;
		left:250px;
		transform:scaleY(2);
	}
	#dd 
	{
		transform:scale(0.6,0.6);	
	} 
 </style>

</head>
<body> <!-- scale.jsp -->

	<div id="aa">scale</div> <p>
	<div id="bb">scalee</div> <p>
	<div id="cc">scaleee</div> <p>
	<div id="dd">scaleeee</div> <p>

</body>
</html>