<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function txt_change(my,txt){
		
		my.innerText=txt;
	}
	function txt_reset(my,txt){
		
		my.innerText=txt;
	}
	function img_change(my,img){
		
		my.src=img;
	}
	function img_reset(my,img){
		
		my.src=img;
	}
</script>
</head>
<body>	<!-- rollover2.jsp => 그림, 텍스트에 마우스가 올라가면 바뀌는거 -->
	
	<span id="aa" onmouseover="txt_change(this,'호호호호호')" onmouseout="txt_reset(this,'안녕하세요')">안녕하세요</span> 
	<span id="bb" onmouseover="txt_change(this,'괜찮습니다')" onmouseout="txt_reset(this,'감사합니다')">감사합니다 </span> <p>
	
	
	<img src="bg1.jpg" width="100" id="cc" onmouseover="img_change(this,'bg3.jpg')" onmouseout="img_reset(this,'bg1.jpg')">
	<img src="bg2.jpg" width="100" id="dd" onmouseover="img_change(this,'bg4.jpg')" onmouseout="img_reset(this,'bg2.jpg')">

</body>
</html>