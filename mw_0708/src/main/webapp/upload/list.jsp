<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="upload.UploadDao" %>
<%@ page import="java.sql.ResultSet" %>
	<%
		UploadDao ud = new UploadDao();
		ResultSet rs = ud.list();
		
		;
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function view(my){
			document.getElementById("bb").src=my.src;
			document.getElementById("pkc").style.visibility="visible";
		}
		function hide(my){
			my.style.visibility="hidden";
		}
	
	</script>
</head>
<body>
	
	<table width="700" align="center">
	<tr>
	<td>사진</td>
	<td>제목</td>
	<td>조회수</td>
	<td>작성일</td>
	</tr>
	<%while(rs.next()) {%>
	<tr>
	<td><img onclick="view(this)" src="img/<%=rs.getString("fname")%>" width="40"></td>
	<td><a href="readnum.jsp?id=<%=rs.getInt("id") %>"> <%=rs.getString("title") %> </a></td>
	<td> <%=rs.getString("readnum") %></td>
	<td> <%=rs.getString("writeday") %></td>
	</tr>
	<%} %>
	<tr>
	<td colspan="4" align="center"><a href="write.jsp">글작성</a></td>
	</tr>
	
	</table>
	<div style="text-align:center;" id="pkc" onclick="hide(this)"><img width="400" id="bb"></div>
</body>
</html>