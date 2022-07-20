<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#aa{

}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		
		// 글자를 클리하면 빨간색으로
		
		$(".aa").click(function(){
			
			$(this).css("color","red"); // 자기 자신의 객체를 가져옴
			alert($(this).index());		// index값을 알기위해
		});
	});

</script>
</head>
<body>	<!-- this.jsp -->

	<div class="aa">짜장면</div>
	<div class="aa">탕수육</div>
	<div class="aa">육계장</div>
	<div class="aa">칼국수</div>
	<div class="aa">순대국</div>
	<div class="aa">참치회</div>
	<div class="aa">가리비</div>
	
</body>
</html>