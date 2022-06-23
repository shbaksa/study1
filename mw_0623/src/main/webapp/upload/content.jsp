<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	String id = request.getParameter("id");
	
	String sql = "select * from upload where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* table{
		border : 0px solid black;
		border-bottom : none;		
	} */
	table{
		/* border-spacing : 0; */
		border-collapse: collapse;
	}
	td {
		border : 1px solid black;
		/* border-bottom : 1px solid black; */
	}
	/* td:last-child {
		border-right : none;
	} */
	tr:last-child > td {
		border : none;		
	}
	
	
	
	a{
		border : 1px solid black;
		color : black;
		text-decoration:none;
	}
	a:hover{
		background : skyblue;
	}
	
</style>
</head>
<body>

	<table width="800" align="center" height="800">
	<caption><h1>후기</h1></caption>
	<tr>
	<td height="30">제 목 </td>
	<td><%=rs.getString("title") %></td>
	<td>이 름 </td>
	<td><%=rs.getString("name") %></td>
	</tr>
	<tr>
	<td height="30">작성일</td>
	<td><%=rs.getString("writeday") %></td>
	<td>조회수</td>
	<td><%=rs.getString("readnum") %></td>
	</tr>
	<tr>
	<td height="200">내용</td>
	<td colspan="3"><img src="img/<%=rs.getString("fname") %>" width="auto"><p><%=rs.getString("content").replace("\r\n","<br>") %></td>
	</tr>
	
	<tr>
	<td height="20" colspan="4" align="right"><a href="list.jsp">목록</a> <a href="update.jsp?id=<%=rs.getInt("id") %>">수정</a></td>
	</tr>
	
	
	</table>

	

</body>
</html>