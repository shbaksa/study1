<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Random" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function move()
	{
		location="ex2.jsp?num=99"	;	
	}

</script>
</head>
<body>

<a href="ex2.jsp?num=99" > 다른페이지로 이동하기</a> <p>

<span onclick="move()"> 다른페이지로 이동하기 2 </span> <p>

<form method="post" action="ex3.jsp">
	<input type="text" name="name"><p>
	<input type="text" name="address"><p>
	<input type="text" name="phone"><p>
	<input type="submit" value="이동하기!" >  
</form>

<form method="post" action="ex4.jsp">
		<input type="text" name="kor"><p>
			<input type="text" name="eng"><p>
				<input type="text" name="mat"><p>
	<input type="submit" value="성적입력" >
</form>


</body>
</html>