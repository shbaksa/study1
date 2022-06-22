<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- select2.jsp -->
	<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");
	%>
	
	<%	
	
	if(request.getParameterValues("Insert") != null){
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	int price = Integer.parseInt(request.getParameter("price"));
	String writeday = request.getParameter("writeday");
	String sql1 = "insert into book(title,name,price,writeday)";
	sql1=sql1+"values (?,?,?,?)";
	
	PreparedStatement pstmt1 = conn.prepareStatement(sql1);
	
	pstmt1.setString(1, title);
	pstmt1.setString(2, name);
	pstmt1.setInt(3, price);
	pstmt1.setString(4, writeday);
	pstmt1.executeUpdate();
	}
	%>
	
	<%
	if(request.getParameterValues("Update") != null){
		
		
		String title = request.getParameter("title1");
		String name = request.getParameter("name1");
		int price = Integer.parseInt(request.getParameter("price1"));
		String writeday = request.getParameter("writeday1");
		int id = Integer.parseInt(request.getParameter("id1"));
		String sql2 = "update book set title=?, name=?, price=?, writeday=? where id=?";
		
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, title);
		pstmt2.setString(2, name);
		pstmt2.setInt(3, price);
		pstmt2.setString(4, writeday);
		pstmt2.setInt(5, id);
		pstmt2.executeUpdate();
	}
	%>
	
	<%
	
	String sql = "select * from book";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	%>
	
	<table width="600" border="1">
		<tr>
			<td> ID </td>
			<td> 제목 </td>
			<td> 저자 </td>
			<td> 가격 </td>
			<td> 출판날짜</td>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td> <input type="radio" name="a" value="i"> </td> 
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("title") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("price") %></td>
			<td><%=rs.getString("writeday") %></td>
		</tr>		
		<% } %>
		

	</table>
	<form method="post" action="update.jsp">
	제목 <input type="text" name="title"> <p>
	저자 <input type="text" name="name"> <p>
	가격 <input type="text" name="price"> <p>
	출판날짜 <input type="text" name="writeday"> <p>			
	바꾸고싶은 ID <input type="text" name="id"> <p>
	update <input type="checkbox" name="Update" value="2">
	<input type="submit" value="전송">
	</form>
	<a href="insert.jsp"> 뒤로가기 </a> <p>

</body>
</html>