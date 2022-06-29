<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		
		function check(my){ // my==document.pkc
			
			// isNaN() => Not a Number 
			var age = my.age.value;
			// alert(isNaN(age));
			
			if(isNaN(age)){
				alert("나이는 숫자만 입력하세요");
				return false;
			}
			else
				return true;
			
		}
	
	</script>
</head>
<body>	<!-- isnan.jsp -->
	
	<form name="pkc" method="post" action="a.jsp" onsubmit="return check(this)">
	나이 <input type="text" name="age">
	<input type="submit" value="전송">
	</form>

</body>
</html>