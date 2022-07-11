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
		display : inline-block;
		border : 1px solid red;
		padding-top : 7px;
	}
	.sub { /* 부메뉴는 레이어로 만들고 좌표의 기준은 브라우저 좌측상단 X , 주메뉴를 기준 */
		border : 1px solid blue;
		position : absolute;
		width : 140px;	
		top : 38px;
		left : -1px;
		visibility : hidden;
	}

</style>
<script>
	function view(n){
		document.getElementsByClassName("sub")[n].style.visibility="visible";
		
	}
	function hide(n){
		document.getElementsByClassName("sub")[n].style.visibility="hidden";
		
	}
</script>
</head>
<body>	<!-- menu1.jsp -->


<div id="menu">
	<div id="main" onmouseover="view(0)" onmouseout="hide(0)"> 주메뉴 
		<div class="sub" onmouseover="view(0)" onmouseout="hide(0)">
		부메뉴 <br>
		부메뉴 <br>
		부메뉴 <br>	
		</div>
	</div>
	<div id="main" onmouseover="view(1)" onmouseout="hide(1)"> 주메뉴
		<div class="sub" onmouseover="view(1)" onmouseout="hide(1)">
		부메뉴 <br>
		부메뉴 <br>
		부메뉴 <br>	
		</div>
	</div>
	<div id="main" onmouseover="view(2)" onmouseout="hide(2)"> 주메뉴 
		<div class="sub" onmouseover="view(2)" onmouseout="hide(2)">
		부메뉴 <br>
		부메뉴 <br>
		부메뉴 <br>	
		</div>
	</div>
</div>
	

</body>
</html>