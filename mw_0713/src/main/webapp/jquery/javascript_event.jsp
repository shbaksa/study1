<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		window.onload=function(){ // 문서를 읽을때 실행
			
			document.getElementById("aa").onclick=function(){
					
				alert("호호");
			}
			document.getElementById("bb").onclick=check;
			
			document.getElementById("cc").onclick=function(){ // 됌
				alert("밖에");
			}
		}
		
		function check(){
			alert("몰라요");
		}
		
		document.getElementById("cc").onclick=function(){ // 안됌
			alert("밖에");
		}
		
	</script>
</head>
<body>	<!-- javascript_event.jsp -->

	<div id="aa">클릭</div> <div id="bb">클릭</div> <p>
	
	<hr>
	
	<div id="cc">클릭</div>

</body>
</html>