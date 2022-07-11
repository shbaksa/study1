<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#menu{
		width : 1000px;
		margin : auto;
		text-align:center;
	}
	#main { /* 내부에 있는 레이어의 기준을 현재 태그에 적용시키려면 현재 태그에 position 속성을 부여해야 한다 */
		width : 140px;
		height : 30px;
		margin: auto;
		position : relative;
		background : red;
		display : inline-block;
		padding-top : 7px;
	}
	#sub { /* 부메뉴는 레이어로 만들고 좌표의 기준은 브라우저 좌측상단 X , 주메뉴를 기준 */
		position : absolute;
		left : 0px;
		top : 30px;
		visibility : hidden;
		background : green;
	}

</style>
<script>
	function view(){
		document.getElementById("sub").style.visibility="visible";
	}
	function hide(){
		document.getElementById("sub").style.visibility="hidden";
	}
</script>
</head>
<body>	<!-- menu1.jsp -->


<div id="menu">
	<div id="main" onmouseover="view()" onmouseout="hide()">주메뉴
		<div id="sub" onmouseover="view()" onmouseout="hide()">
		부메뉴 <br>
		부메뉴 <br>
		부메뉴 <br>	
		</div>
	</div>
	<div id="main" onmouseover="view()" onmouseout="hide()">주메뉴
		<div id="sub" onmouseover="view()" onmouseout="hide()">
		부메뉴 <br>
		부메뉴 <br>
		부메뉴 <br>	
		</div>
	</div>
	<div id="main" onmouseover="view()" onmouseout="hide()">주메뉴
		<div id="sub" onmouseover="view()" onmouseout="hide()">
		부메뉴 <br>
		부메뉴 <br>
		부메뉴 <br>	
		</div>
	</div>
</div>
	

</body>
</html>