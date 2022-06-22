<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
	
	String sql ="select * from board2";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	%>
	
	
	<table width="700" border="1" align="center">
	<caption><h2> 게시판 목록 </h2></caption>
	<tr align="center">
	<td> <b>제목</b> </td>
	<td> <b>이름</b> </td>
	<td> <b>조회수</b> </td>
	<td> <b>작성일</b> </td>
	<td> <b>지역</b> </td>
	<td> <b>공개여부</b> </td>
	</tr>
	
	<% while(rs.next()) {%>
	<tr align="center">
	 <% if(rs.getInt("bimil") == 0) { %>
	
		<td> <%=rs.getString("title") %> </td>
		<td> <%=rs.getString("name") %></td>
		<td> <%=rs.getString("readnum") %></td>
		<td > <%=rs.getString("writeday") %> </td>	
		<td> <% switch(rs.getInt("area")) { 
			case 0 : %> 서울 <% break; 
			case 1 : %> 경기 <% break;
			case 2 : %> 강원 <% break;
			case 3 : %> 충청 <% break;
			case 4 : %> 전라 <% break;	
			case 5 : %> 경상 <% break;	
			case 6 : %> 제주 <% break;	
			} %> 
			<td> 공개</td> <% } 
		
		else{ %>
			<td> 비밀</td>
			<td> 비밀</td>
			<td> 비밀</td>
			<td> 비밀</td>
			<td> 비밀</td>
			<td> 비밀</td>	
		
		<% } %>
		
<%}%>
 </td>
	
	</tr>
	
	<tr align="right" >
	<td colspan="6"> <form method="post" action="write.jsp">
	<input type="submit" value="글쓰기"></form></td>
	</tr>
	
	
	
	
	
	
	
	
	</table>

</body>
</html>