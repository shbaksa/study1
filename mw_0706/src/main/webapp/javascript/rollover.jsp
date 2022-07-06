<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function txt_change(n){
		
		if(n==0)
		document.getElementById("aa").innerText="호호호호호";
		else
		document.getElementById("bb").innerText="괜찮습니다";
	}
	function txt_reset(n){
		
		if(n==0)
		document.getElementById("aa").innerText="안녕하세요";
		else
		document.getElementById("bb").innerText="감사합니다";
	}
	function img_change(n){
		
		if(n==0)
			document.getElementById("cc").src="bg3.jpg";
		else
			document.getElementById("dd").src="bg4.jpg";
		
	}
	function img_reset(n){
		
		if(n==0)
			document.getElementById("cc").src="bg1.jpg";
		else 
			document.getElementById("dd").src="bg2.jpg";
	}
</script>
</head>
<body>	<!-- rollover.jsp => 그림, 텍스트에 마우스가 올라가면 바뀌는거 -->
	
	<span id="aa" onmouseover="txt_change(0)" onmouseout="txt_reset(0)">안녕하세요</span> 
	<span id="bb" onmouseover="txt_change(1)" onmouseout="txt_reset(1)">감사합니다 </span> <p>
	
	
	<img src="bg1.jpg" width="100" id="cc" onmouseover="img_change(0)" onmouseout="img_reset(0)">
	<img src="bg2.jpg" width="100" id="dd" onmouseover="img_change(1)" onmouseout="img_reset(1)">

</body>
</html>