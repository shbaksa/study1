<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* color:색의값 */
	b {
	font-size:72px;
	}
	#aa{ /* 제일 마지막 ;는 생략해도 작동됨 */
	color: blue;
	}
	#bb{ /* aa bb 를 가장 보편적으로 씀 아래는 그냥 있다정도로만 알고있자 영문과 16진수 */
	color: #4ad2c4;
	}
	#cc{    /* 4a, d2, c4  계산기에 프로그래머 쓰면 나옴 */
	color: rgb(74,210,196);
	}
	#dd{    /*a 투명도 잘안씀*/
	color: rgba(74,210,196,0.2);
	}
	#ee{
	color: hsl(360,100%,40%);
	}
	#ff{
	color: hsla(360,100%,40%,0.2);
	}	
</style>
</head>
<body> <!-- font_color.jsp -->

	<!-- 글자색 속성 => color -->
	<b id="aa"> 안녕하세요 </b> <p>
	<b id="bb"> 안녕하세요 </b> <p>
	<b id="cc"> 안녕하세요 </b> <p>
	<b id="dd"> 안녕하세요 </b> <p>
	<b id="ee"> 안녕하세요 </b> <p>
	<b id="ff"> 안녕하세요 </b> <p>

</body>
</html>