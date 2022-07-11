<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "login.BoardDao" %>

	<%
		BoardDao bd = new BoardDao();
		bd.check_session(session, response);
		ResultSet rs = bd.content(request, response, session);
		
		rs.next();

	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/ta.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form method="post" action="update_ok.jsp">
	<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
	<table width="500" align="center">
	<caption><h2>수정</h2></caption>
	<tr>
	<td>제목</td>
	<td><input type="text" name="title" value="<%=rs.getString("title") %>"></td>
	</tr>
	<tr>
	<td>내용</td>
	<td><textarea rows="5" cols="40" name="content"><%=rs.getString("content")%></textarea> </td>
	</tr>
	<tr>
	<td> <input type="submit" value="수정">
	</td>
	</tr>
	</table>
	</form>
</body>
</html>