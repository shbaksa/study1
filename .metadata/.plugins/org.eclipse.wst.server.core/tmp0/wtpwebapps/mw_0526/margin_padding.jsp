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
	width : 100px;
	height:30px;
	border: 1px solid red;
	margin-top:10px;
	}
	#bb
	{
	margin-top:30px;
	}
	span
	{
	margin-left:30px;
	}
	


</style>
</head>
<body> <!-- margin_padding.jsp -->

	<!-- 
		margin:요소와 요소의 거리 (4방향) // margin-top(상) margin-left(왼) margin-right(오) margin-bottom(하) <= 한방향씩 하고싶을때
		padding:자기요소의 내요과 외곽선의 거리 (block에서 가능) (4방향)// padding-top padding-left padding-right padding-bottom
	 -->
	 
	 상하 <p>
	 <div id="aa"> 첫번째</div>
	 <div id="bb"> 두번째</div>
	 <div id="cc"> 세번째</div>
	 
	 <hr>
	 좌우 <p>
	 <span> 첫번째</span>
	 <span> 두번째</span>
	 <span> 세번째</span>
	

</body>
</html>