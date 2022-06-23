<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	  function bye() {
		
		alert();
	} 
	/* window.unload=function()
	{
		alert();
	} */
</script>
</head>
<body onunload="bye()">	<!-- unload.jsp // 브라우저에서 막아서 안됨 -->

	<a href="http://naver.com"> 네이버 </a>
</body>
</html>