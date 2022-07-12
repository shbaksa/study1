<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDao" %>
<%@ page import = "java.sql.ResultSet" %>

	<%
		BoardDao bd = new BoardDao();
	
		ResultSet rs = bd.content(request);
		
		rs.next();
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="update_ok.jsp">
	<input type="hidden" name="id" value="<%=rs.getInt("id")%>">
	<table width="700" align="center">
	<caption><h2>글수정</h2></caption>
	
	<tr>
	<td>제목</td>
	<td><input type="text" name="title" value="<%=rs.getString("title")%>"></td>
	</tr>
	<tr>
	<td>작성자</td>
	<td><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
	</tr>
	<tr>
	<td>내용</td>
	<td><textarea cols="50" rows="5" name="content"><%=rs.getString("content") %></textarea></td>
	</tr>
	<tr>
	<td colspan="2" align="center"><input type="submit" value="수정"></td>
	
	</tr>
	</table>
	</form>
</body>
</html>