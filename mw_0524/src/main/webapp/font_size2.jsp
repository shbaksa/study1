<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
b {
font-size:30px;
}
#aa{ /* 부모의 글자크기 기준 %,em크기로 */ /* 이런게 있다 정도로만 알아두자 잘안쓴다 */
font-size:50%; /* 15px */
}
#bb{
font-size:0.7em; /* 21px(70%) */
}


</style>

</head>
<body> <!-- font_size2.jsp -->

	<!-- 단위별 크기 => %, em -->
	<b> <!-- 부모 -->
		안녕하세요 <p> <!-- 자식 -->
		<span id="aa">안녕하세요</span> <p>
		<span id="bb">안녕하세요</span> <p>
	</b>

</body>
</html>