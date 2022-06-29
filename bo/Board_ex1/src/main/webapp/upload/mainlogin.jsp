<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ex01.css">
<title> 로그인 </title>
</head>
<script>
<% String chk = request.getParameter("chk");%>
	function chk()
	{
		if(<%= chk%> == 1)
			{
				alert("아이디를 입력하세요.");
				location="mainlogin.jsp";
			}
		else if(<%= chk%> == 2)
		{
			alert("아이디 또는 비밀번호가 틀렸습니다.");
			location="mainlogin.jsp";
		}
		
	}
	
	function back()
	{
		location.href="main.jsp";
	}
		
</script>


<body onload="chk()">
<div id="joinmain">
<div id="m1"> 로그인 </div>

<form method="post" action="loginaction.jsp">
	<input type="text" name="userid" size="20" placeholder="ID"><p>
	<input type="password" name="pwd" size="20" placeholder="PASSWORD"><p>
	<input type="button" value="뒤로가기" onclick="back()" style="margin-left:10%">
	<input type="submit" value="로그인">
	<input type="submit" value="회원가입" formaction="join.jsp">
</form>
</div>
</body>
</html>