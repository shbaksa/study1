<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");
	%>
	
	<%
		String sql = "select * from book";
		PreparedStatement pt = conn.prepareStatement(sql);
		ResultSet rs = pt.executeQuery();
	%>
	
	<table width="800" border="1" >
		<tr>
			<td> ID</td>
			<td> 제목</td>
			<td> 저자</td>
			<td> 가격</td>
			<td> 출판날자</td>
		</tr>
		<%while(rs.next()){ %>
		<tr>
			
			<td><a href="delete.jsp?id=<%=rs.getString("id")%>"> <input type="checkbox" name="a"  > <%=rs.getString("id") %> </a></td>
			<td> <%=rs.getString("title") %></td>
			<td> <%=rs.getString("name") %></td>
			<td> <%=rs.getString("price") %></td>
			<td> <%=rs.getString("writeday") %></td>
		</tr>
		<%} %>
		<tr>
		<td colspan="5" align="center"> <a href="insert.jsp"> 추가 </a> </td>
		<tr>
		<tr>
		<td colspan="5" align="center"> <a href="update.jsp"> 수정 </a> </td>
		<tr>
		<tr>
		<td colspan="5" align="center"> <a href="delete.jsp"> 삭제 </a> </td>
		<tr>
	</table>
	
	
	
	
</body>
</html>