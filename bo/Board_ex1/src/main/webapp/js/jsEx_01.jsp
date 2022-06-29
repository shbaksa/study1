<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function cc()
	{
		 alert(event.keyCode);
	}
function move(my)
{
	 if(event.keyCode==27)
		 {
		 	my.disabled="false";
		 }
}
function move2(my)
{
	 if(event.keyCode==46)
		 {
		 	my.style.visibility = "hidden";
		 }
}


function move3(my)
{
		 	my.value = my.value.replace(/[^0-9]/g,"");

}

function move4(my)
{
		 	my.value = my.value.replace(/[0-9]/g,"");

}

function move5(my)
{
		 	my.value = my.value.replace(/[a-zA-Z0-9]/g,"");

}

function cardd(my,n)
{
		if(my.value.length == 4)
	{
		document.jj.card[n].focus();
	}
}

function check(my)
{
	if(my.selectedindex!=0)
		{
	document.getElementById("aa").innerText= my.value;
		}
}
</script>


 key down1 <input type="text" onkeydown="cc()"> <p>
 key down2 <input type="text" onkeydown="move(this)"> <p>
 key down3 <input type="text" onkeydown="move2(this)"> <p>


 숫자만 <input type="text" onkeyup="move3(this)"> <p>
 문자만 <input type="text" onkeyup="move4(this)"> <p>
 한글만 <input type="text" onkeyup="move5(this)"> <p>


 key press<input type="text" onkeypress="cc()"> <p>
 key up <input type="text" onkeyup="return cc()"> <p>

<form name="jj">
 <input type="text" name="card" onkeyup="cardd(this,1)" size="4"> -
 <input type="text" name="card" onkeyup="cardd(this,2)"size="4"> -
 <input type="text" name="card" onkeyup="cardd(this,3)"size="4"> -
 <input type="text" name="card" maxlength="4" size="4">  
</form>
<p>

<input type="text" onchange="check(this)" >
<p>
<form name="jj1">
<select onchange="check(this)">
<option> 선택 </option>
<option value="2000"> gg </option>
<option value="3000"> zz </option>
<option value="4000"> vv </option>
<option value="5000"> hh </option>
</select>
가격 : <span id="aa"> 원</span>
</form>

<hr>
<script>
	function csin(my) 
	 {  my.style.border="10px solid gray"; }
	function csout(my)
	{ my.style.border="10px solid red"; }
	
	
	function csin2(my) 
	 {  
		document.getElementById("oo").innerText= ""; }
	function csout2(my)
	{
		if(my.value.trim() == "")
		{
			document.getElementById("oo").innerText= "비번입력"; 
		}
	}
	
	function csout3()
	{
		
		var pwd=document.jj2.pwd.value;
		var pwd2 = document.jj2.pwd2.value;
		
		if(pwd == pwd2)
		{
			document.getElementById("r6").innerText= "비번동일"; 
		}
		else
		{
			document.getElementById("r6").innerText= "비번틀림"; 
		}
	}
	
</script>

<input type="text" id="gg" placeholder="name" onfocus="csin(this)" onblur="csout(this)">
<input type="text" id="gg" value="name" onfocus="csin1(this)" onblur="csout1(this)">


<input type="password" id="gg" value="pwd" onfocus="csin2(this)" onblur="csout2(this)">
<span id="oo"></span>


<p>
<form name="jj2">
<input type="password" name="pwd" >
<input type="password" name="pwd2" onkeyup="csout3()">
<p>
<span id="r6"></span>
</form>














</body>
</html> 