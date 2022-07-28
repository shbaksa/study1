<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	margin:0;
	padding:0;
}
ul{
	list-style-type: none;
}
#main{
	width:300px;
	height:100px;
	border:1px solid red;
	margin-top:300px;
	margin-left:700px;
	overflow:hidden;
}
#main #sub{
	height:100px;
	width:2450px;
	border:1px solid blue;
	padding-left:0px;
	margin-top:-1px;
}
#main #sub li{
	width:300px;
	height:100px;
	list-style-type: none;
	display:inline-block;
}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		
		var w=0;
		
		setInterval(function(){
		
		ss=setInterval(function(){
			
			w--;
			$("#sub").css("margin-left",w);
			if(w==-300){				
				clearInterval(ss);
				$("li").eq(0).insertAfter($("li").eq(7));
				$("#sub").css("margin-left","0px");
				w=0;
			}
		
		},10);
		
		},4000)	;
	});

</script>
</head>
<body>	<!-- .jsp -->

	<!-- <input type="button" id="btn" value="작                   동">
	
	<hr> -->
	
	<div id="main">
		<ul id="sub">
			<li><img src="img/1.jpg" width="300" height="100"></li><li><img src="img/2.jpg" width="300" height="100"></li><li><img src="img/3.jpg" width="300" height="100"></li><li><img src="img/4.jpg" width="300" height="100"></li><li><img src="img/5.jpg" width="300" height="100"></li><li><img src="img/6.jpg" width="300" height="100"></li><li><img src="img/7.jpg" width="300" height="100"></li><li><img src="img/8.jpg" width="300" height="100"></li>
		</ul>	
	</div>
	
	
</body>
</html>