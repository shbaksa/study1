<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style>
body
{
	text-align:center;
	padding-top: 50px;
	padding-left: 50px;
	background : white;
	font-size: 15px;
	font-family: Courier,impact,fantasy;
	marigin : 0;
}
table {
	width:100%;
	border: 2px solid black;
	border-collapse: collapse;
	background : #EAEAEA;
	border-radius : 20px;
}
	th,td
	{
		border: 1px solid black;
		padding : 5px;
	}
div{
	background: #F6F6F6;
	font-size : 50px;
	text-align : center;
	
	
}
</style>

<%



	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String sql = "select * from board1";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.executeUpdate();	
	
	
	ResultSet rs = pstmt.executeQuery();
	
		

%>
<% int userid=0; %>


</head>
<body>

 	<div>게시판 목록</div>
<table>
<form name="list" method="post">

<tr style="background-color:#8C8C8C; color:white; font-size: 20px; font-weight :bold">
	<td> ○</td>
	<td> No</td>
	<td> 이름 </td>
	<td> 제목 </td>
	<td> 조회수 </td>
	<td colspan="2"> 작성일 </td>
</tr>
<% 

while(rs.next()) {%>
<tr>
	<td> <input type="checkbox" name="choice" value="<%= userid++ %>"> </td>
	<td> <%=rs.getInt("uid") %>
	<td> <%=rs.getString("name") %></td>
	<td><a href="readnum.jsp?uid=<%=rs.getInt("uid") %>"> <%=rs.getString("title") %></a> </td>
	<td> <%=rs.getString("readnum") %>  </td>
	<td colspan="2"> <%=rs.getString("writeday") %>   </td>
</tr>
<%} %>
<script>
		
		function check()
		{
		var option = "width = 50px;, height = 20px; location =center;"
    	var name = "PASSWORD"
    	window.open("delete_pw.jsp?choice=<%=userid%>",name, option);
 	  	document.list.submit();
 	  	}
</script>

<p>
<tr style="background-color:#D5D5D5">

	<td colspan="5" rowspan="1" style="border:none"></td>
	<td style="border:none"><input type="button" value="삭제하기" formaction="delete_pw.jsp" onclick="check()"></td>
	
</form> 

	<td style="border:none">
	<form action="write.jsp">
	<input type="submit" value="작성하기" >
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