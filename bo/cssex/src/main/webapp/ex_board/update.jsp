<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
        <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
<script>
	function check()
	{
		if(document.pkc.pw.value == "")
		{
			alert("비밀번호가 입력되지 않았습니다.");
			return false;
		}
		else
		{
		 	return true;
		}		
	}

</script>
<style>
body
{
	text-align:center;
	padding-top: 50px;
	padding-left: 50px;
	background : lightblue;
	font-size: 15px;
	font-weight :bold;
	font-family: Courier,impact,fantasy;
}table {
	width:100%;
	border: 2px solid black;
	 border-collapse: collapse;
}
	th,td
	{
	border: 1px solid black;
	padding : 5px;
	}


</style>
</head>
<body>

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
<form name="pkc" method="post" action="update_ok.jsp?uid=<%=rs.getInt("uid")%>" onsubmit="return check()">
<table>
<tr style="background-color:pink; font-size: 20px">
		<td width="100">작성자</td> 
		<td>제  목</td>
		<td width="60">조회수</td>
		<td width="150">작성일</td>
		
</tr>
<tr>
		<td width="100"><%=rs.getString("name") %></td> 
		<td><input type="text" size="50" name="title" value="<%=rs.getString("title") %>"></td>
		<td width="60"><%=rs.getString("readnum") %></td>
		<td width="150"><%=rs.getString("writeday") %></td>
		
</tr>
<tr>
<td width="100" height="100">내용</td>
<td colspan="3" ><textarea cols="100" rows="10" name="content"> <%=rs.getString("content") %></textarea></td>
</tr>
</table>

<table>
<tr style="background-color:ivory">
	<td> <a href="readnum.jsp?uid=<%=rs.getString("uid")%>"> 뒤로가기 </a>  </td>
	<td colspan="2"> 비밀번호 <input type="password" name="pw" size="20"> <td>
	<input type="submit" value="변경하기">	
</tr>
</table>
</form>
<%  
pstmt.close();
conn.close();
rs.close();
%>


</body>
</html>