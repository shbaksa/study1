<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function check()
	{
		alert("ㅎㅇ");
		document.pkc.submit();
	}

	function check2()
	{
		alert("ㅂㅇ");
		return false;
	}
</script>
</head>
<body>

	<form name="pkc" method="post" action="dom1.jsp">
	이름		<input type="text" name="name"> <p>
	암호 		<input type="pwd" name="pw"> <p>
	소개		<textarea cols="40" rows="5" name="sg"></textarea> <p>
					<input type="button" onclick="check()" value="ok"> <p>
	</form>
	
	<form name="pkc2" method="post" action="dom1.jsp" onsubmit="return check2()">
	이름		<input type="text"name="name"> <p>
	암호 		<input type="pwd"name="pw"> <p>
	소개		<textarea cols="40" rows="5" name="sg"></textarea> <p>
					<input type="submit" value="ok"> <p>
	</form>
	

</body>
</html>