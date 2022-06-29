<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

	function change()
	{
		document.getElementsByTagName("div")[0].align="center";
		document.getElementsByTagName("div")[1].style.color="blue";
	}
	
	function change2()
	{
		document.getElementById("cc").style.color="yellow";
		document.getElementById("dd").align="center";
	}
	
	
	function change3()
	{
		document.getElementsByClassName("ee")[0].style.color="yellow";
		document.getElementsByClassName("ee")[1].style.color="red";
	}
	
	function change4()
	
	{
		document.getElementsByName("ho")[0].size=5;
		document.getElementsByName("ho")[2].style.background="gray";
		
	}
	
	
	// document.getElementsByTagName("태그명");
	// document.getElementsById("ID명");
	// document.getElementsByClassName("Class명");
	// document.getElementsByName("name명");
	
</script>



</head>
<body>


<input type="button" onclick="change()" value="호출" > <p>
<input type="button" onclick="change2()" value="호출" > <p>
<input type="button" onclick="change3()" value="호출" > <p>


<div > 하이 </div>

<div> 하이 </div>

<div id="cc"> 하이 </div>

<div id="dd"> 하이 </div>

<div class="ee"> 하이 </div>

<div class="ee"> 하이 </div>

<input type="button" onclick="change4()" value="호출" > <p>

<form>

<input type="text" name="ho" > <p>
<input type="text" name="ho" > <p>
<input type="text" name="ho" > <p>

</form>
</body>
</html>