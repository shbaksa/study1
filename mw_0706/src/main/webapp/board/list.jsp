<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
	<%
	
		BoardDao bd = new BoardDao();
		ResultSet rs = bd.list();

	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr,td{
	border : 1px solid black;
}
</style>
</head>
<body>

	<table width="500" align="center">
	<caption><h1>게시판목록</h1></caption>
	<tr align="center">
	<td width="200">제목</td>
	<td width="50">작성자</td>
	<td width="50">조회수</td>
	<td width="80">작성일</td>
	</tr>
	<%while(rs.next()){ %>
	<tr align="center">
	<td align="left"><a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getInt("readnum") %></td>
	<td><%=rs.getString("writeday") %></td>
	</tr>
	<%} %>
	<tr>
	<td colspan="4" align="center"><input type="button" onclick="location='write.jsp'" value="글작성"></td>
	</tr>
	</table>

</body>
</html>
<% bd.close();%>