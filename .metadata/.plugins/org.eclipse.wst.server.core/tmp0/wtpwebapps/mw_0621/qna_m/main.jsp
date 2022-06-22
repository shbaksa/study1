<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%
	
	Class.forName("com.mysql.jdbc.Driver");
	String db="jdbc:mysql://localhost:3306/first";
	Connection conn=DriverManager.getConnection(db,"root","1234");
	
	String sql ="select * from qna order by grp asc , seq asc";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<style>
	caption {
		border-top : 1px solid black;
		border-bottom : 1px solid black;
		font-size : 64px;
		
	}
	tr:frist-child > td {
		border-bottom : 1px solid black;
	}
	
	table {
		font-size : 13px;
	}
	/* tr:last-child > td {
		border-bottom : 1px solid black;
		border-top : 1px solid black;
	} */
	 /* #deldel{
		visibility : hidden; 
		}
	 */
	
</style>
<script>
	function view() {
		
		var pepsii = document.getElementById("deldel").style.visibility;
		
		if(pepsii == "hidden")
			{
				document.getElementById("deldel").style.visibility="visible";
			}
		else if(pepsii == "visible")
			{
				document.getElementById("deldel").style.visibility="hidden";
			}
	}
	
	
	
	function view1(n){
		
		var pepsi = document.getElementById("del"+n).style.visibility;
		
		if(pepsi == "hidden") {
			document.getElementById("del"+n).style.visibility="visible";
		}
		else if(pepsi == "visible") {
			document.getElementById("del"+n).style.visibility="hidden";
		}
		
			
	}
</script>

</head>
<body>
	
	
	
	<table width="1000" align="center">
	<caption  onclick="view()"><b>QnA</b></caption>
	<tr id="deldel" style="visibility:hidden">
	<form name="pkc" method="post" action="write.jsp">
	<td colspan="8" align="center">
	<input type="text" name="title" size="40" placeholder="제목작성">	
	<input type="text" name="name" placeholder="작성자">
	<input type="password" name="pwd" placeholder="비밀번호">
	<input type="submit" value="질문글작성"></td>
	</form>
	</tr>
	<tr id="tr1">	
	<td width="300" colspan="2">제목</td>	
	<td>작성자</td>
	<td>추천</td>
	<td>작성일</td>	
	</tr>
	<%while(rs.next()) { 
	String str="";
	if(rs.getInt("depth")!=1){
		for(int i=1;i<rs.getInt("depth");i++){
			str=str+"&nbsp;&nbsp;";
		}
		str=str+"ㄴ";
	}
	%>
	<tr>
	<td><%=str%><%=rs.getString("title") %></td>	
	<td><%=rs.getString("name") %></td>	
	<td><%=rs.getString("readnum") %></td>
	<td><%=rs.getString("writeday") %></td>

	<td><input type="button" onclick="view1(<%=rs.getInt("id")%>)" value="댓글달기"></td>
	</tr>
	<form method="post" action="rewrite.jsp">
	<input type="hidden" name="grp" value="<%=rs.getInt("grp")%>">
	<input type="hidden" name="depth" value="<%=rs.getInt("depth")%>">
	<input type="hidden" name="seq" value="<%=rs.getInt("seq")%>">
	<tr style="visibility:hidden" id="del<%=rs.getInt("id")%>">		
	<td colspan="2"><input type="text" name="title" placeholder="제목"></td>
	<td><input type="text" name="name" placeholder="작성자"></td>
	<td><input type="password" name="pwd" placeholder="비밀번호"></td>
	<td><input type="submit" value="댓글작성"></td>
	</tr>
	</form>
	
	<% } %>
	
	</table>
	
</body>
</html>