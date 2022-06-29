<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body
{
background : lightblue;
margin :0;
text-align:left;
font-size:30px;

}
</style>

<script>
	function check()
	{
		if(	document.pkc.name.value != "" &&
		document.pkc.pw.value != "" &&
		document.pkc.gender.value != "" &&
		document.pkc.sg.value() != "" )
		{
			return true;
		}
		else
		{
			alert("작성 안 된 항목이 있습니다.");
			return false;
		}
		
	}

</script>
</head>
<body>
<div id="aa">
<form name="pkc" method="post" action="ex0608.jsp" onsubmit="return check()">

	이름  :  <input type="text" name="name"> <p>
	패스워드  :  <input type="password" name="pw"> <p>
	소개  :  <textarea cols="40" rows="5"  name="sg"> </textarea><p>
	
	
	성별 <input type="radio" name="gender" value="남"> 남
		 <input type="radio" name="gender" value="여"> 여 <p>
		 
	취미 <input type="checkbox" name="hobby" value="스포츠"> 스포츠
		 <input type="checkbox" name="hobby" value="게임"> 게임
		 <input type="checkbox" name="hobby" value="영화"> 영화
		 <input type="checkbox" name="hobby" value="음주"> 음주
		 <input type="checkbox" name="hobby" value="휴식"> 휴식 <p>
		
	지역 <select name="area">
	
		<option> 서울 </option>
		<option> 경기도 </option>
		<option> 강원도 </option>
		<option> 충청도 </option>
		<option> 경상도 </option>
		<option> 전라도 </option>
		<option> 제주도 </option>		
	 </select> <p>
	 
	 <input type="submit" value="전송">
		


</form>
</div>

</body>
</html>