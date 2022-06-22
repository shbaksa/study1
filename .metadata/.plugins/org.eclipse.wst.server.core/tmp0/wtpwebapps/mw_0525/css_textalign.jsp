<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* 태그명 {속성명:속성값; 속성명;속성값} 
	b{
		color:red;
	}
	i{
		color:blue;	
	}*/
	#b{
	color:red;
	}
	#b1{
	color:blue
	}
	.i
	{
	font-size:72px
	}
	.i1
	{
	font-size:40px
	}
	/* style에서 속성을 통한 좌우 정렬*/
	div {
	text-align:center;
	}
	span{
	text-align::right; /* lnline태그는 적용 X */
	}
	


</style>
</head>
<body>  <!-- css_textalign.jsp -->

	<!-- text-align:정렬 
		1. css : 태그에 새로운 속성들을 추가하는 기능 => 태그의 기능 => css기능
		2. 외부파일로
		3. 태그내부에
	-->
	<b id="b"> 안녕 </b> 하세요 <p>
	<i class="i"> 호호	</i> <p>
	<b id="b1"> 하하하 </b>
	<i class="i1"> 오늘은 수요일 </i>
	
	<div> 안녕하세요 </div>
	<div> 감사합니다 </div>
	<hr>
	<span> 하하하 </span> <!-- inline 태그는 좌우정 -->
	<span> 호호호 </span>

</body>
</html>