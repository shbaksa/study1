<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
		font-size:32px;
		}
	span{
		font-size:32px;
		}
	#aa{
		border-style:solid; /* 선의 모양 */
		border-color:#4a7dff; /* 선의 색상 */
		border-width:2px; /* 선의 굵기 */
		width:500px; /* 가로 크기 */
		height:80px; /* 세로 크기 */
		/* 가로와 세로의 크기는 block형에서만 가능 */
		}
	#bb{
		width:360px;
		height:60px;
		border:solid 1px #2fdfcc; /* 위에 3줄 합쳐진다 순서는 상관없다 */
		}

</style>
</head>
<body> <!-- border1.jsp -->

	<!-- 외곽선 관련 태그 -->
	<div> 안녕하세요 </div>
	<div id="aa"> 안녕하세요 </div> <p>  <!--   가로세로 크기 조절 가능 (block태그) -->
	<span id="aa"> 안녕하세요 </span>  <!--  가로세로 크기 조절 불가능 (inline태그) 다른 방법이 있다내  -->
	
	<hr>
	
	<div id="bb"></div>

</body>
</html>