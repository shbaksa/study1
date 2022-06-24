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
	
	<form method="post" action="update_ok.jsp" enctype="multipart/form-data">
	<input type="hidden" name="id" value="<%=id%>">
	<input type="hidden" name="fname2" value="<%=rs.getString("fname")%>">
	<table width="800" align="center" height="800">
	<caption><h1>후기</h1></caption>
	<tr>
	<td height="30">제 목 </td>
	<td><input type="text" name="title" value="<%=rs.getString("title") %>"></td>
	<td>이 름 </td>
	<td><input type="text" name="name" value="<%=rs.getString("name") %>"></td>
	</tr>
	<tr>
	<td height="200">내용</td>
	<td colspan="3"><textarea cols="40" rows="5" name="content" ><%=rs.getString("content")%></textarea></td>
	</tr>
	<tr>
	<td colspan="4" align="center">
	 <input type="file" name="fname"> 
	<img src="img/<%=rs.getString("fname") %>" width="300"> </td>
	</tr>
	
	<tr>
	<td height="20" colspan="4" align="right"><input type="submit" value="수정"></td>
	</tr>
	
	
	</table>
</form>
	

</body>
</html>