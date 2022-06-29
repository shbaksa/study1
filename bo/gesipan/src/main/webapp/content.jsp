<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#a9
{
	visibility : hidden;
}
</style>
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
	String chk = request.getParameter("chk");
	
	String sql = "select * from gesipan where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	
	ResultSet rs= pstmt.executeQuery();
		
	rs.next();
	
	
	String content = rs.getString("content").replace("\r\n","<br>");
 %>
 <script>
  	
   function view_3(n)
   {
	  		document.getElementById("a9").style.visibility="visible";
	  	
	  	  if(n==0)
		   {
			  	 document.getElementById("a9").action="pw_ok.jsp?chk=0&id="+<%= rs.getString("id")%>+"";
		   }
	 	   else if(n==1)
		   {
	 	         document.getElementById("a9").action="pw_ok.jsp?chk=1&id="+<%= rs.getString("id")%>+"";
		   }	
  }   
   
   function chk()
   {
		<%
		
		if(chk != null)
		{
			%>
		alert("비밀번호가 틀립니다.");

	<%	} %>
   }
  </script>
</head>
<body onload="chk()">
<div id="ff"> 게시판 </div>
<table>
<tr>
<td> 작성자 </td> 
<td> <%= rs.getString("name") %> </td>

<td> 제목 </td> 
<td> <%= rs.getString("title") %></td>

<td> 조회수 </td> 
<td> <%= rs.getString("readnum") %></td>

<td> 작성일 </td> 
<td> <%= rs.getString("writeday") %></td>
</tr>

<tr>
<td> 이메일 </td> 
<td colspan="4"> <%= rs.getString("email") %></td>
</tr>

<tr>
<td> 내용 </td>
<td colspan="4"> <%= content %> </td>
</tr>
</table>

<form>
 <input type="button" onclick="view_3(0)" value="수정">
 <input type="button" onclick="view_3(1)" value="삭제">
</form>

 <form name="AA" id="a9" method="post" action="pw_ok.jsp">
  암호를 입력하세요. 
  <input type="password" name="pw" size="10" style="border-radius:4px;"> 
  <input type="submit" value="입력">
 </form>
<form action="list.jsp">
<input type="submit" value="뒤로가기">
</form>
  <%
  	pstmt.close();
  conn.close();
  rs.close();
  %>

</body>
</html>