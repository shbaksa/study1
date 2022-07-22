<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

	$(function() {
	
		$(".aa").click(function(){
						
			var n=$(this).index();
			
			if(n!=0){
				// 클릭된 요소를 앞 요소 앞에 이동
				// $(this).insertBefore($(".aa").eq(n-1));
				
				// 클릭된 요소 앞의 요소를 클릭된 요소 뒤로 이동
				 $(".aa").eq(n-1).insertAfter($(this));
				
			}
			
				
		});
		
	});
</script>
</head>
<body>
	<!-- insert3.jsp -->
	<!--  클릭하면 바로 위에 있는 것과 바꾸기 -->
	<!-- <input type="button" id="btn1" value="insertBefore">
	<input type="button" id="btn2" value="insertAfter">	
	<hr> -->

	<div class="aa">짜장면</div>
	<div class="aa">탕수육</div>
	<div class="aa">육계장</div>
	<div class="aa">칼국수</div>
	<div class="aa">순대국</div>
	<div class="aa">참치회</div>
	<div class="aa">가리비</div>


</body>
</html>