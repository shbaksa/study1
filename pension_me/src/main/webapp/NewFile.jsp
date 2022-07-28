<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <link href="../etc/pension.css" rel="stylesheet" type="text/css" />
<script src="../etc/pension.js"></script> -->
</head>
<style>
*{
	margin:0;
	padding:0;
	box-sizing : border-box
}
a{
	text-decoration: none;
}
ul{
	list-style:none;
}
#container{
	margin:0 auto;
	width:1200px;
	background-color:#fff;
}

header{
	width:100%;
	height:100px;
	background-color:#cccccc;
}
#logo{
	float:left;
	width:250px;
	height:100px;
	line-height:100px;
	padding-left:20px;
}
#logo b{
	font-weight:700;
	font-siwz:40px;
	color:#fff;
	text-shadow: 0 -1px 0 #222;
}

#nav1{
	float:right;
	
	width:900px;
	height:100px;
	padding-top:40px;
}
#nav1 ul li {
	display:inline-block;
}
#main{
	display:inline-block;
}
#topMenu{
	display:inline-block;
	height:60px;
}
#topMenu li{
	float:left;
	
}
#topMenu li a{
	display:block;
	font-size:1.1em;
	color:#fff;
	font-weight:600;
	padding:20px 60px;
	
}
#topMenu li a:hover{
	color:#1fa8f8;	
}

#nav1 #topMenu #main{
	position: relative;
}

#topMenu #main .sub{
	position : absolute;
	padding-left:0px;
	display:hidden;
}




#nav2{
	float:right;
	width:900px;
	height:25px;	
	
}
#secondMenu{
	height:20px;
	
}
#secondMenu li{
	float:right;
	position:relative;
}


</style>
<script>
	
	$(function(){
		
		$("#main").mouseover(function(){
			
			$(".sub").css("display","block");
			
		});
		
		$("#main").mouseout(function(){
			
			$(".sub").css("display","none");
		});
		
	});

</script>
<body>
<div id="container">
	<header>
		
		<div id="logo">
		 <a href="#"><b>로고</b></a>
		</div>
		
		<nav id="nav1">
			<ul id="topMenu">
				<li id="main"><a href="#">메뉴</a></li>
					<ul class="sub">
						<li>하위메뉴</li>				
					</ul>
				<li id="main"><a href="#">메뉴</a></li>
				
				<li id="main"><a href="#">메뉴</a></li>
				
				<li id="main"><a href="#">메뉴</a></li>		
					
			</ul>	
		</nav>
		<nav id="nav2">
			<ul id="secondMenu">
				<li>
					<a href="#">로그인</a>
					<a href="#">회원가입</a>
				</li>
			
			</ul>		
		</nav>
	
	
	
	</header>

</div>
</body>
</html>