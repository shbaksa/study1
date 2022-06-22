<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	div
	{
		font-size:24px;
		width:300px;
		height:200px;
		border: 1px solid red;
	}
	#aa /* padding 이 추가 되면 전체 외곽선의 크기가 커진다 */
	{
		padding:10px; 
	}
	#bb
	{
		padding-top:20px;
	}
	#cc
	{
		padding-left:30px;
	}
</style>
</head>
<body> <!-- padding.jsp -->

	<!-- padding 예제 -->
	
	<div id="aa"> 안녕하세요</div> <p>
	<div id="bb"> 안녕하세요</div> <p>
	<div id="cc"> 안녕하세요</div> <p>

</body>
</html>