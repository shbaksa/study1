<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="jh.css">
<title>질의응답</title>
<%@ page import="java.sql.*" %>
<%

		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/qna?allowMultiQueries=true";
		Connection conn = DriverManager.getConnection(url,"root","0000");

		request.setCharacterEncoding("UTF-8");
		
		String sql = "select * from qna where dep=1";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
	
%>
<style>
#a9
{
	text-align:center;
	background : lightgray;
}	
#a9 td
{
	border: hidden;
}

</style>
<script>
	function answer(n)
	{
		
		var set = document.getElementById("ans"+n).style.visibility;		
				
		if(set == "hidden")
			{
				document.getElementById("ans"+n).style.visibility="visible";
			}
		
		else if(set == "visible")
			{
		     	document.getElementById("ans"+n).style.visibility="hidden";
			}
	}
	function com(n,i)
	{
		var set1 = document.getElementById("jj"+n+"com"+i).style.visibility;

		if(set1 == "hidden")
		{
			document.getElementById("jj"+n+"com"+i).style.visibility="visible";
		}
	
    	else if(set1 == "visible")
		{
	     	document.getElementById("jj"+n+"com"+i).style.visibility="hidden";
		}
     }

</script>
</head>
<body>
<div id="ff"> QnA </div>

<table>
<tr id="a2">
	
	<td colspan="2">Title</td>
	<td>Name</td>
	<td colspan="2">Content</td>
	<td>Date</td>
	<td>Click</td>
</tr>
<%	while(rs.next()){	
	
		String sql_a = "select max(dep) as dep from qna";
		pstmt = conn.prepareStatement(sql_a);
		ResultSet rs_a = pstmt.executeQuery();
		
		rs_a.next();	
	
	%>
<tr id="aaa" height="100px">
	<td width="30px" Style="font-weight:bold; color: white; font-size:15px; background:lightblue;" > Q </td>
	<td width="80px" style="text-align:left; color: white;  font-size:15px; background:lightblue;"><%= rs.getString("title") %></td>
	<td style="background:lightblue; color: white;  font-size:15px;"><%= rs.getString("name") %></td>
	<td style="text-align:left;color: white;  background:lightblue; font-size:15px;"><%= rs.getString("content").replace("/r/n","<br>") %></td>
	<td style="background:lightblue; color: white; font-size:15px;" onclick="answer(<%= rs.getInt("grp")%>)"> 답글 </td>
	<td style="background:lightblue; color: white; font-size:15px;"><%= rs.getString("writeday") %></td>
	<td style="background:lightblue; color: white; font-size:15px;"><%= rs.getString("readnum") %></td>
</tr>

<tr style="visibility : hidden; background:pink;" id="ans<%= rs.getInt("grp")%>" >
<form method="post" action="reqna_writeok.jsp">
	<input type="hidden" name="dep" value="<%= rs_a.getInt("dep")%>">
	<input type="hidden" name="seq" value="<%= rs.getInt("seq")%>">
	<input type="hidden" name="grp" value="<%= rs.getInt("grp")%>">
	<input type="hidden" name="pwd" value="">
	<td Style="font-weight:bold; color:red;"> A </td>
	<td><input type="text" name="title" size="5" style="border:hidden;"></td>
	<td><input type="text" name="name" size="5" style="border:hidden;"></td>
	<td><input type="text" name="content" size="10" style="border:hidden;"></td>
	<td> </td>
	<td> <input type="submit" value="입력"> </td>
	<td></td>
	</form>		
</tr>

<%		
	
		int grp = rs.getInt("grp");
		int dep = rs.getInt("dep");
		sql = "select * from qna where grp=? and seq=0";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,grp);
		
		ResultSet rsc = pstmt.executeQuery();
		rsc.next();
%>

	<% while(rsc.next()) { %>
<tr id="a1">
	<td Style="font-weight:bold; color:blue; font-size:11px;"> A </td>
	<td style="text-align:left; font-size:11px;"> <%= rsc.getString("title") %></td>
	<td style="font-size:11px;"><%= rsc.getString("name") %></td>
	<td style="text-align:left; font-size:11px;"><%= rsc.getString("content").replace("/r/n","<br>") %></td>
	<td style="font-size:11px;"onclick="com(<%= rsc.getInt("grp")%>,<%= rsc.getInt("dep")%>)"> 댓글입력 </td>
	<td style="font-size:11px;"><%= rsc.getString("writeday") %></td>
	<td style="font-size:11px;"><%= rsc.getString("readnum") %></td>
</tr>
<tr style="visibility : hidden; background:ivory;" id="jj<%= rsc.getInt("grp")%>com<%= rsc.getInt("dep")%>"  >
<form method="post" action="comqna_writeok.jsp">
	<input type="hidden" name="dep" value="<%= rsc.getInt("dep")%>">
	<input type="hidden" name="seq" value="<%= rsc.getInt("seq")%>">
	<input type="hidden" name="grp" value="<%= rsc.getInt("grp")%>">
	<input type="hidden" name="pwd" value="">
	<td Style="font-weight:bold; color:red;">└</td>
	<td><input type="text" name="title" size="5" style="border:hidden;"></td>
	<td><input type="text" name="name" size="5" style="border:hidden;"></td>
	<td><input type="text" name="content" size="10" style="border:hidden;"></td>
	<td> </td>
	<td> <input type="submit" value="입력"> </td>
	<td></td>
	</form>		
</tr>



  <% 
		grp = rsc.getInt("grp");
  		dep = rsc.getInt("dep");
		sql = "select * from qna where dep = ? and grp=? and seq=1";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,dep);
		pstmt.setInt(2,grp);
		ResultSet rscc = pstmt.executeQuery();		  
  
  		while(rscc.next())
	  {
	  %>
	<tr id="a1">
	<td style="background:white; font-size:9px;"></td>
	<td style="background:white; font-size:9px;" style="text-align:left;" Style="font-weight:bold; color:gray;">└ </td>
	<td style="background:white; font-size:9px;" style="text-align:left;"> <%= rscc.getString("title") %></td>
	<td style="background:white; font-size:9px;"><%= rscc.getString("name") %></td>
	<td style="background:white; font-size:9px;" style="text-align:left;"><%= rscc.getString("content").replace("/r/n","<br>") %></td>
	<td style="background:white; font-size:9px;"><%= rscc.getString("writeday") %></td>
	<td style="background:white; font-size:9px;"><%= rscc.getString("readnum") %></td>
</tr>
		
<% } %>
	<%} %>
<%} %>
</table>

<a href="qnaWrite.jsp"> 작성</a>

</body>
</html>