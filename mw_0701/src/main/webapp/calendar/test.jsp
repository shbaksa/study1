<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
LocalDate today = LocalDate.now();
int day = today.getDayOfMonth();

%>


		<button style="color:red; background:green;"> <%=day %></button>
		
		<table border="1">
		<tr>
		<td style="background:green;" style="color:red;" >1213123</td>
		</tr>
		
		</table>
</body>
</html>