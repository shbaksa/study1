<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script>
	
	function inti()
	{
		var tt = document.documentElement.scrollTop;
		document.getElementById("aa").innerText = "ㅎㅇ";
		document.getElementById("bb").style.top = (500+tt)+"px";
		document.getElementById("bb").innerText = "ㅎㅇ2";
	}
	document.onscroll=inti;
	
	function move()
	{
		 document.documentElement.scrollTop="0px";	
	}
</script>
<style>

	#aa {
		position:fixed;
		left:200px;
		top:300px;
	}
	#bb
	{
		position:absolute;
		left : 300px;
		top : 100px;
		cursor:pointer;
	}

</style>

<body>
<div id="aa"> 따라오렴 </div>
<div id="bb" onclick="move()"> 따라오렴2 </div>
<%
	for(int i = 0; i <200; i++)
	{
		i =+ i;
		%>
		<p>
		<%
		out.println(i);
	}
%>


</body>
</html>