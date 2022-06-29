<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function ccc(my)
{
		var phone = my.phone.value;
		var pho = phone.split("-");
		my.p1.value = pho[0];
		my.p2.value = pho[1];
		my.p3.value = pho[2]; 
}

function test_12()
{
	var ttt = document.jj2.title.value;
	var ttt_a = document.jj2.title.value.substring(0,10);
	var str = "";
	
	for(i=11; i<=ttt.length; i++)
		{
		 	str = str + "*";
		}

	document.getElementById("aa").innerText = ttt_a+str;
}



</script>

</head>
<body>
<form name ="jj" >

	전화번호 <input type="text" name="phone"> <p>
	<button type ="button" onclick="ccc(this.form)"> Click </button> <p>
   <input type="text" name="p1" size="3"> 
  <input type="text" name="p2" size="3"> 
  <input type="text" name="p3" size="3">
	
</form>


<form name ="jj2" >


	제목 <input type="text" name="title" size="50" > <p>
	
	<input type="button" value="클릭" onclick="test_12()">
 	<span id="aa"></span>
</form>
</body>
</html>