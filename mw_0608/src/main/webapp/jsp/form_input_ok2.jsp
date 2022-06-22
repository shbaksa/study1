<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form_input_ok2.jsp -->

	<%
	// 체크박스 null값 해결하기

	request.setCharacterEncoding("utf-8");
	String hob = "";
	if (request.getParameterValues("hobby") != null) {
		String[] hobby = request.getParameterValues("hobby");

		for (int i = 0; i < hobby.length; i++) {
			hob = hob + hobby[i] + ",";
		}
	}

	out.print(hob);
	%>

</body>
</html>