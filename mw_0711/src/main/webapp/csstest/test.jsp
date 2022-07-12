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
	function logininputview(){
		
		var pe = document.getElementById("logininput").style.display;
		if(pe=="none")
			document.getElementById("logininput").style.display="block";
		else
			document.getElementById("logininput").style.display="none";
	}
</script>
</head>
<body>
	
	
	<div id="cap"><b>제목</b>
	<div id="loginbox" ><span id="loginboxspan" onclick="logininputview()">로그인</span> <span id="join">회원가입</span></div>
	</div>
	
	<form method="post" action="login.jsp">
	<div id="logininput">
	<input type="text" name="userid" placeholder="아이디입력">
	<input type="password" name="userpwd" placeholder="비밀번호입력">
	<input type="submit" value="로그인">
	</div>
	</form>

	<div id="col_main">
		<div id="col" onmouseover="view(0)" onmouseout="hide(0)">1
			<div class="sub" onmouseover="view(0)" onmouseout="hide(0)">
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			</div>
		</div> 	
		<div id="col" onmouseover="view(1)" onmouseout="hide(1)">2
			<div class="sub" onmouseover="view(1)" onmouseout="hide(1)">
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			</div>		
		</div> 
		<div id="col" onmouseover="view(2)" onmouseout="hide(2)">3
			<div class="sub" onmouseover="view(2)" onmouseout="hide(2)">
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			<span>&nbsp;&nbsp;&nbsp;부메뉴&nbsp;&nbsp;&nbsp;</span> <br>
			</div>	
		</div>
	</div>
	
 	 	

</body>
</html>