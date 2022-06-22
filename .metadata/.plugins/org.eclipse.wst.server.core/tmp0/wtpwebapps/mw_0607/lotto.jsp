<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- lotto.jsp -->

	<%
	// 1~45까지의 임의의 값 발생시켜서 출력
	Random rand = new Random();
	for (int i = 1; i <= 6; i++) {
		int lotto = rand.nextInt(45) + 1;
		out.print(lotto + "");
	}
	%>

</body>
</html>