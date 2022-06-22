<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{font-size:24px;}
	span{font-size:24px;}
	#aa
	{
		display:inline;		
	}
	#bb
	{
		display:block;
	}



</style>


</head>
<body> <!-- display.jsp -->

	<!-- display:값; => block태그와 inline태그의 변환 -->
	<hr> block태그 => inline태그 <p> <hr>
	<div>안녕</div>
	<div>하세요</div>
	<div>내일은</div>
	<div>금요일</div>
	<hr>
	<div id="aa">안녕</div>
	<div id="aa">하세요</div>
	<div id="aa">내일은</div>
	<div id="aa">금요일</div>
	<hr> inline태그 => block태그 <p> <hr>
	<span>안녕</span>
	<span>하세요</span>
	<span>내일은</span>
	<span>금요일</span>
	<hr>	
	<span id="bb">안녕</span>
	<span id="bb">하세요</span>
	<span id="bb">내일은</span>
	<span id="bb">금요일</span>
	
	
	

</body>
</html>