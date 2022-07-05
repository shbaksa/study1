<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.Member_Dao" %>
<%@page import="java.sql.ResultSet"%>   
<%
	Member_Dao md = new Member_Dao();
	
	ResultSet rs = md.list();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	tr,td {
	border:1px solid black;
	text-align:center;
	}
</style>

</head>
<body>	<!-- list.jsp -->
	
	<!-- member테이블의 내용을 select 해서 전부 출력 -->
	<!-- 테이블 출력 -->
	<table width="500" align="center">
	<caption><h1>회원목록</h1></caption>
	<tr>
	<td>이름</td>
	<td>나이</td>
	<td>수정</td>
	<td>삭제</td>
	</tr>
	<% while(rs.next()) {%>
	<tr>
	<td><%=rs.getString("name") %></td> 
	<td> <%=rs.getInt("age") %></td>
	<td><input type="button" onclick="location='member_update.jsp?id=<%=rs.getInt("id") %>'" value="수정"> </td>
	<td><input type="button" onclick="location='member_delete.jsp?id=<%=rs.getInt("id") %>'" value="삭제"></td>
	</tr>
	<%} %>
	<tr>
	<td colspan="4" align="center"><input type="button" onclick="location='member_input.jsp'" value="입력"></td>
	</tr>
	</table>


	

	

</body>
</html>