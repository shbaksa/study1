<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		var news=["bg1.jpg","bg2.jpg","bg3.jpg","bg4.jpg"];
		var i=0;
		function auto_change(){
			
			ss = setInterval(function(){
				
				document.getElementById("pkc").src=news[i];
				i++;
				if(i >= news.length)
					i=0;
				
			},5000)
			
		}
		
		
	
	</script>
</head>
<body>	<!-- auto_change1.jsp => 글자내용이 1초 자동으로 변하기 -->

	<!-- text내용을 자동으로 바꾸기 -->
	<input type="button" onclick="auto_change()" value="클릭"> <p>
	<img src="" id="pkc" width="1200">

</body>
</html>