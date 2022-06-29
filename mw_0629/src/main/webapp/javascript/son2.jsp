<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		
		function parent_text(my){
			
			// 부모창 폼태그 = 자식창 폼태그;
			
			var n = my.name.value;
			var a = my.age.value;
			
			opener.document.pkc.name.value=n;
			opener.document.pkc.age.value=a;
		}
	
	</script>

</head>
<body>


	<form name="pkc">
	이름 <input type="text" name="name"> <p>
	나이 <input type="text" name="age"> <p>
	<input type="button" onclick="parent_text(this.form)" value="부모창에 값보내기">
	</form>

</body>
</html>