<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="member_update_ok.jsp">
	<input type="hidden" name="id" value=<%=request.getParameter("id") %>>
	이름 : <input type="text" name="name"><p>
	나이	: <input type="text" name="age"><p>
	<input type="submit" value="전송">
	</form>

</body>
</html>