<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용</title>
<style>
body
{
	text-align:center;
	padding-top: 50px;
	padding-left: 50px;
	background : lightblue;
	font-size: 20px;
	font-weight :bold;
	font-family: Courier,impact,fantasy;
}
table {
	width:100%;
	border: 2px solid black;
	 border-collapse: collapse;
}
	th,td
	{
	border: 1px solid black;
	padding : 5px;
	}
#del
{
	display:none;
}
</style>

<script>
	function view()
	{
		document.getElementById("del").style.display="table-row";		
	}

</script>

</head>
<% 

	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

 	request.setCharacterEncoding("UTF-8");
 	String UID = request.getParameter("uid");
 	
 	 	
	String sql = "select * from board1 where UID=?";
	
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,UID);
	
	ResultSet rs = pstmt.executeQuery();	
 
 	rs.next();
 
 %>
<body>
<table width="800" border="2">
<tr>
		<td width="100">작성자</td> 
		<td>제  목</td>
		<td width="60">조회수</td>
		<td width="150">작성일</td>
		
</tr>
<tr>
		<td width="100"><%=rs.getString("name") %></td> 
		<td><%=rs.getString("title") %></td>
		<td width="60"><%=rs.getString("readnum") %></td>
		<td width="150"><%=rs.getString("writeday") %></td>
		
</tr>
<tr>
<td width="100" height="100">내용</td>
<td colspan="3" > <%=rs.getString("content").replace("\n\r","<br>") %></td>
</tr>

<tr style="background-color:ivory" style="font-size: 10px">
	
	<td colspan="4"><a href="update.jsp?uid=<%=rs.getInt("uid")%>"> 수정하기</a>
		&nbsp;
	<a href="#" onclick="view()"> 삭제하기</a>&nbsp;
	<a href="list.jsp"> 목록 </a></td>
</tr>

<tr id="del" style="background-color:ivory" style="font-size: 10px">
	<td colspan="6" align="center">
		<form method="post" action="delete_ok.jsp?uid=<%=rs.getInt("uid")%>">
		비밀번호 <input type="password" name="pw"> 
				  <input type="submit" value="DELETE"> 
		</form>
	</td>	
</tr>
</table>

<%  
	pstmt.close();
	conn.close();
	rs.close();
%>

</body>
</html>