<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <script>

	var kor=90;
	var eng=99;
	var tot=kor+eng;

	alert(tot);
	
	
	document.write(tot);
	console.log("숨겼다");
</script> -->

<script>

	function test()
	{
		alert("경고");
	}

	function sum()
	{
			var sum = 0;
			for(i =1; i<=100; i++)
				{
					sum += i;				
				} 
			alert(sum);
	}
	function input()
	{
		
		var a = document.getElementById("a").value;
		var sum=0;
		for(i=1; i<=a; i++)
			{
				sum += i;
			}
		alert(sum);
	}
	
	
	function hap()
	{
		
		
		
		var a = parseInt(document.hapd.a.value);
		var b = parseInt(document.hapd.b.value);
		
		var sum=0;
		for(i=a; i<=b; i++)
			{
				sum += i;
			}
		document.getElementById("aa").innerText=sum;
	}
	

</script>



</head>
<body>

 
<!-- <div onmouseover="test()"> 클릭1</div> -->

<!-- <input type="button" value="클릭" onclick="test()">  	<input type="button" value="1~100까지합" onclick="sum()"> -->  	


<form name="hapd">
a : <input type="text" name="a">
b : <input type="text" name="b">
<input type="button" value="합은?" onclick="hap()"><p>
결과 : <span id="aa"></span>

</form>

 


<form action="javascript:input2()">
<input type="text" id="a">
<input type="text" id="b">
</form>

<input type="button" value="합은?" onclick="input2())"> 

	
</body>
</html>