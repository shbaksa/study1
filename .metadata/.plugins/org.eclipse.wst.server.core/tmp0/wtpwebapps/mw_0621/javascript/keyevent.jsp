<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function chk()
		{
			alert();
		}
	</script>
</head>
<body>	<!-- keyevent.jsp : keydown, keypress, keyup -->
	
	
	keydown : <input type="text" onkeydown="chk()"> <p>
	keypress : <input type="text" onkeypress="chk()"> <p>
	keyup : <input type="text" onkeyup="chk()"> <p>
	
	
</body>
</html>