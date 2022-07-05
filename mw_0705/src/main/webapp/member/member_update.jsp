<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.Member_Dao" %>
	
	<%
		Member_Dao md = new Member_Dao();
		
		ResultSet rs = md.update_input(request);
		
		rs.next();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="member_update_ok.jsp">
	<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
	이름 : <input type="text" name="name" value="<%=rs.getString("name") %>"><p>
	나이	: <input type="text" name="age" value="<%=rs.getString("age") %>"><p>
	<input type="submit" value="전송">
	</form>

</body>
</html>