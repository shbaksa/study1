<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="sungjuk.Sungjuk_Dao" %>
	
	<%
		Sungjuk_Dao sd = new Sungjuk_Dao();
		
		ResultSet rs = sd.input();
		
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
	<script>
		function move(id){
			location="update.jsp?id="+id;
		}
		function del(id){
			location="delete.jsp?id="+id;
		}
	
	</script>
</head>
<body>
	
	<table width="500" align="center">
	<tr>
	<td>이름</td>
	<td>국어</td>
	<td>영어</td>
	<td>수학</td>
	<td>수정</td>
	<td>삭제</td>
	</tr>
	<%while(rs.next()){ %>
	<tr>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getInt("kor") %></td>
	<td><%=rs.getInt("eng") %></td>
	<td><%=rs.getInt("mat") %></td>
	<td><input type="button" onclick="move(<%=rs.getInt("id")%>)" value="수정"></td>
	<td><input type="button" onclick="del(<%=rs.getInt("id") %>)" value="삭제"></td>
	</tr>
	<% } %>
	
	<tr>
	<td colspan="6" align="center"><input type="button" onclick="location='write.jsp'" value="성적입력">
	</td>
	
	
	</table>

</body>
</html>