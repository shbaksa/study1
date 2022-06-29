<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body
{
	background: ivory;
	padding-left: 100px;
}
	input[type=text]
	{
		width : 300px;
		height : 40px;
		border-radius:5px;
	}
	
	input[type=password]
	{
		width : 300px;
		height : 40px;
		border-radius:5px;
		background:lightgray;
	}
	
	input[type=button]
	{
		width : 300px;
		height : 20px;
		border-radius:30px;
		background: lightblue;
		color: white;
		border: 0.5px dotted;
	}
	
	
	input[type=submit]
	{
		width : 300px;
		height : 20px;
		border-radius:30px;
		background: pink;
		color: white;
		border: 0.5px dotted;
	}
	
		
	input[type=submit]:hover
	{
		width : 300px;
		height : 20px;
		border-radius:30px;
		background: red;
		color: white;
		border: 2px solid;
	}
	
		input[type=reset]
	{
		width : 300px;
		height : 20px;
		border-radius:30px;
		background: black;
		color: white;
		border: 0.5px dotted;
	}
	
	#aa > b 
	{
	 	color : pink;
	}
	#cc b
	{
		color : red;
	}
	#aa #bb > b
	{
		text-decoration:underline;
	}
	
</style>

</head>
<body>
	
	<form>
	
	<input type="text"> <p>
	<input type="password"> <p>
	<input type="button" value="선택"> <p>
	<input type="submit" value="전송"> <p>
	<input type="reset" value="초기화"> <p>
	
	</form>
	
	
	<div id="aa">
	
	<b>  First  </b> 
		<div id="bb">
		 <b> 주간 메뉴는</b> 	<p>
		 <span>
			 오늘 점심은?
		 </span>	
		 </div>
	</div>
		
		
	<div id="cc">	
	<b>  Second </b> 
		<div id="dd">
		<b> 월간 메뉴는</b> 	<p>
		 <span>
		 	내일 점심은?
		 </span>	
		 </div>
	</div>	
		

</body>
</html>