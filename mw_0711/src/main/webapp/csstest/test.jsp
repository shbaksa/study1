<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/ts.css" rel="stylesheet" type="text/css" />
<script>
	function view(n){
		document.getElementsByClassName("sub")[n].style.visibility="visible";
	}
	function hide(n){
		document.getElementsByClassName("sub")[n].style.visibility="hidden";
	}
</script>
</head>
<body>
	
	
	<div id="cap">제목 </div>
	<div id="loginbox" ><span id="loginboxspan">로그인</span> <span id="join">회원가입</span></div>
	
	<div id="col_main">
		<div id="col" onmouseover="view(0)" onmouseout="hide(0)">1
			<div class="sub" onmouseover="view(0)" onmouseout="hide(0)">
			<hr> 부메뉴 <br><hr>
			부메뉴 <br><hr>
			부메뉴 <br><hr>
			부메뉴 <br>
			</div>
		</div> 	
		<div id="col" onmouseover="view(1)" onmouseout="hide(1)">2
			<div class="sub" onmouseover="view(1)" onmouseout="hide(1)">
			부메뉴 <br>
			부메뉴 <br>
			부메뉴 <br>
			부메뉴 <br>
			</div>		
		</div> 
		<div id="col" onmouseover="view(2)" onmouseout="hide(2)">3
			<div class="sub" onmouseover="view(2)" onmouseout="hide(2)">
			<hr> 부메뉴 <hr>
			부메뉴 <hr>
			부메뉴 <hr>
			</div>	
		</div>
	</div>
	
 	 	

</body>
</html>