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
	if(request.getParameterValues("Update") != null){
		
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String writeday = request.getParameter("writeday");
		int id = Integer.parseInt(request.getParameter("id"));

		if(title != "")
		{	
			String sql = "update book set title=? where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);			
			pstmt.setString(1, title);
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
		}
		
		
		if(name != "")
		{		
			String sql = "update book set name=? where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
			
		}
		if(price != "")
		{		
			String sql = "update book set price=? where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int price1 = Integer.parseInt(price);
			pstmt.setInt(1, price1);
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
			
		}
		if(writeday != "")
		{
			String sql = "update book set writeday=? where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, writeday);
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
			
		}
	
		
	}
	%>
	
	<%
	
	String sql1 = "select * from book";
	
	PreparedStatement pstmt1 = conn.prepareStatement(sql1);
	
	ResultSet rs = pstmt1.executeQuery();

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
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("title") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("price") %></td>
			<td><%=rs.getString("writeday") %></td>
		</tr>		
		<% } %>
		

	</table>
	<a href="select2.jsp"> 뒤로가기 </a> <p>
	
	

</body>
</html>