<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		
	
	</script>
</head>
<body>

	<form method="post" action="select2.jsp" name="pkc" onsubmit="return check()">
	<a href="select2.jsp"> 목록보기 </a> <p>
	<hr>	
	제목 <input type="text" name="title"> <p>
	저자 <input type="text" name="name"> <p>
	가격 <input type="text" name="price"> <p>
	출판날짜 <input type="text" name="writeday"> <p>		
	insert <input type="checkbox" name="Insert"	value="1">	
	<input type="submit" value="전송"> 
	<hr>
	제목 <input type="text" name="title1"> <p>
	저자 <input type="text" name="name1"> <p>
	가격 <input type="text" name="price1"> <p>
	출판날짜 <input type="text" name="writeday1"> <p>			
	바꾸고싶은 ID <input type="text" name="id1"> <p>
	update <input type="checkbox" name="Update" value="2"> <p>
	<input type="submit" value="전송"> 
	<hr>
	

		
	</form>

</body>
</html>