<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="upload.UploadDao" %>
<%@ page import="java.sql.ResultSet" %>

	<%
		UploadDao ud = new UploadDao();
		
		ResultSet rs = ud.content(request,response);
		
		rs.next();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table width="500" align="center">
	<caption><h2>제목 : <%=rs.getString("title") %></h2></caption>
	<tr>
	<td>작성자</td>
	<td><%=rs.getString("name") %></td>
	</tr>
	<tr>
	<td>내용</td>
	<td><%=rs.getString("content").replace("\r\n","<br>") %></td>
	</tr>
	<tr>
	<td align="center"><img src="img/<%=rs.getString("fname") %>" width="300"></td>
	</tr>
	<tr>
	<td colspan="2" align="center"><a href="update.jsp?id=<%=rs.getInt("id") %>">수정</a>
	</td>
	</tr>
	<tr>
	<td colspan="2" align="center"><a href="delete.jsp?id=<%=rs.getInt("id") %>">삭제</a></td>
	</tr>
	<tr>
	<td><a href="list.jsp">목록</a></td>
	</tr>
	
	
	
	</table>

</body>
</html>