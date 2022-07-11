<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "login.BoardDao" %>
	
	<%
		BoardDao bd = new BoardDao();
		bd.check_session(session, response);
		ResultSet rs = bd.content(request,response,session);
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

	<table width="500" align="center">
	<caption><h2>제목 : <%=rs.getString("title") %></h2></caption>
	<tr>
	<td>작성자</td>
	<td><%=rs.getString("name") %></td>
	</tr>
	<tr>
	<td>작성일</td>
	<td><%=rs.getString("writeday") %></td>
	</tr>
	<tr>
	<td>내용</td>
	<td><%=rs.getString("content").replace("\r\n","<br>") %></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<a href="list.jsp">목록</a>	
	<%
	String ssuserid = session.getAttribute("userid").toString();
	String rsuserid = rs.getString("userid");
	if( rsuserid.equals(ssuserid)  ){ %>
	<a href="update.jsp?id=<%=rs.getInt("id") %>">수정</a>
	<a href="delete.jsp?id=<%=rs.getInt("id") %>">삭제</a>
	<%} %>
	</td>
	</tr>
	</table>

</body>
</html>

<% bd.close(); %>