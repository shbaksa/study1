<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
	<%
		BoardDao bd = new BoardDao();
		ResultSet rs = bd.list();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table width="700" align="center">
	<tr>
	<td>제목</td>
	<td>작성자</td>
	<td>조회수</td>
	<td>작성일</td>
	</tr>
	<%while(rs.next()){ %>
	<tr>
	<td><a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getInt("readnum") %></td>
	<td><%=rs.getString("writeday") %></td>
	</tr>
	<%} %>
	<tr>
	<td colspan="4" align="center"><a href="write.jsp">글작성</a></td>
	</tr>
	
	</table>
	

</body>
</html>