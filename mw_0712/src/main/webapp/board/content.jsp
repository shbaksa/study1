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

	<table width="700" align="center">
	<caption><h3>제목 : <%=rs.getString("title") %></h3></caption>
	<tr>
	<td>작성자</td>
	<td><%=rs.getString("name") %></td>
	</tr>
	<tr>
	<td>조회수</td>
	<td><%=rs.getInt("readnum") %></td>
	</tr>
	<tr>
	<td>작성일</td>
	<td><%=rs.getString("writeday") %></td>
	</tr>
	<tr>
	<td height="100">내용</td>
	<td><%=rs.getString("content").replace("\r\n","<br>")%></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<a href="update.jsp?id=<%=rs.getInt("id") %>">수정</a>
	<a href="list.jsp">목록</a>
	<a href="delete.jsp?id=<%=rs.getInt("id") %>">삭제</a>
	</td>
	</tr>
	
	
	</table>

</body>
</html>