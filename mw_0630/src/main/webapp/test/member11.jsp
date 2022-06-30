<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>
	
		function p_check(){
			
			var pwd = document.pkc.pwd.value;
			var pwd2 = document.pkc.pwd2.value;
			
			if(pwd!=pwd2){
				
				alert("비밀번호가 틀렸습니다");
				document.getElementById("aa").innerText="비밀번호가 틀렸습니다";
				return false;
			}
			else{
				return true;
			}
		}
	
	</script>
</head>
<body style="text-align:center;">
<h1>test</h1>

	<form name="pkc" method="post" action="member.jsp" onsubmit="return p_check()">
	비밀번호<input type="password" name="pwd"	placeholder="비밀번호"  size="15"><p>
	비밀번호확인<input type="password" name="pwd2"	placeholder="비밀번호확인"  size="8"><span id="aa" style="font-size:4px"></span><p>
	<input type="submit"  value="비밀번호체크확인용">
	</form>

</body>
</html>