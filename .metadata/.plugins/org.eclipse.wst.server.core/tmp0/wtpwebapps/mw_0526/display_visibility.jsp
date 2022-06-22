<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{font-size:24px;}
	
	#aa
	{
		display:none;
	}
	#bb
	{
		visibility:hidden;
	}


</style>
</head>
<body> <!-- display_visibility.jsp -->

	<!-- 요소를 숨기는 속성 : display, visibility 둘다 // 나중에 자바스크립트를 통해 동작을 넣어서 나타나게 만들수 있다-->
	<div id="aa"> 안녕하세요 </div> <p>
	<div id="bb"> 안녕하세요 </div>
	
	<hr> display 자리도 차지 못한다 <hr>
	<div>짜장면</div>
	<div id="aa">탕수육</div>
	<div>팔보채</div>
	<div>라조기</div>
	<hr> visibility 자리는 차지한채로 사라진다<hr>
	<div>짜장면</div>
	<div id="bb">탕수육</div>
	<div>팔보채</div>
	<div>라조기</div>
	
	

</body>
</html>