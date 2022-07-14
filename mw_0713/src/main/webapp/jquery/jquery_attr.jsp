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
		
		// 태그의 속성을 읽어오기
		var s1 = $("#cc input[type=text]").attr("value");
		alert(s1);
		var s2 = $("input[type=text]").attr("value");
		alert(s2);
		
		// 태그의 속성을 바꾸기
		$("#aa").attr("type","radio");
		
		$("a").attr("href","http://www.naver.com");
		
		
	});

</script>
<style>
	#cc input[type=text]{
		width : 300px;
		height : 100px;
		border : 1px solid green;
	}

</style>


</head>
<body>	<!-- jquery_attr.jsp -->

	<div id="cc">
	<input type="text" value="이름"><p><hr>
	<input type="checkbox" id="aa"><p><hr>
	<a href="#">클릭</a><p><hr>
	</div>
	
	<input type="text" value="속성"><p>
</body>
</html>