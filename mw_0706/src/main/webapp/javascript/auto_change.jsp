<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		var news=["오늘은 매우 더운 날씨입니다","내일은 비도 올수도 있고 더운날씨","모레는 더운날씨도 있고 비도 오고","도오도어어어어어엉도도도도도어어어어도돋어오더오더오더어어도어"];
		var i=0;
		function auto_change(){
			
			ss = setInterval(function(){
				
				document.getElementById("pkc").innerText=news[i];
				i++;
				if(i >= news.length)
					i=0;
				
			},1000)
			
		}
		
		
	
	</script>
</head>
<body>	<!-- auto_change.jsp => 글자내용이 1초 자동으로 변하기 -->

	<!-- text내용을 자동으로 바꾸기 -->
	<input type="button" onclick="auto_change()" value="클릭">
	<div id="pkc">ddddddd</div>

</body>
</html>