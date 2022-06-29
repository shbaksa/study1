<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="jh.css">
<title>상세 페이지</title>
<%@ page import="java.sql.*" %>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String none = request.getParameter("none");
	
	String sql = "select * from gesipan where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	
	ResultSet rs= pstmt.executeQuery();
		
	rs.next();
	
 %>
 <script>
 	function check()
 	{
		if(<%=none%>==1)
			{
				alert("내용을 입력하세요.")			
			}
		else if(<%=none%>==2)
		{
			alert("제목을 입력하세요.")			
		}
		else if(<%=none%>==3)
		{
			alert("이메일을 입력하세요.")			
		}
 	}
 
 </script>
</head>
<body onload="check()">
<div id="ff"> 게시판 </div>
<form method="post" action="update_ok.jsp?id=<%= rs.getString("id")%>">
<table>

<tr>
<td> 작성자 </td> 
<td> <%= rs.getString("name") %> </td>

<td> 제목 </td> 
<td> <input type="text" value="<%= rs.getString("title")%>" name="title" size="20"></td>

<td> 조회수 </td> 
<td> <%= rs.getString("readnum") %></td>

<td> 작성일 </td> 
<td> <%= rs.getString("writeday") %></td>
</tr>

<tr>
<td> 이메일 </td> 
<td colspan="4"> <input type="text" value="<%= rs.getString("email")%>" name="email" size="20"></td>
</tr>

<tr>
<td> 내용 </td>
<td colspan="4"> <textarea name="content" ><%= rs.getString("content")%></textarea></td>
</tr>
</table>
<input type ="submit" value="수정완료">
</form>


</body>
</html>