<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="board.BoardDao" %>
	<%
		BoardDao bd = new BoardDao();
		
		ResultSet rs = bd.content(request);
		
		rs.next();
		%>
		<%-- <%-- int ck=0;
		if(request.getParameter("ck")==null)
			ck=0;
		else if(Integer.parseInt(request.getParameter("ck"))==1) { %>
		<script>
			alert("비밀번호 오류");
		</script>
		 
	<% }%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr,td{
	border : 1px solid black;
}
a{
	text-decoration: none;
	color : black;
}
</style>
<script>
	function view(my){
		
		var pe = document.getElementById("del").style.visibility;
		
		if(pe == "hidden")
			document.getElementById("del").style.visibility="visible";
		else
			document.getElementById("del").style.visibility="hidden";
			
	}
</script>
</head>
<body>
	 
	 <table width="500" height="600" align="center">
	 <caption><h2>제목 : &nbsp; <%=rs.getString("title") %> </h2></caption>
	 <tr>
	 <td width="30">작성자</td>
	 <td width="50"><%=rs.getString("name") %></td>
	 <td width="30">작성일</td>
	 <td width="50"><%=rs.getString("writeday") %></td>
	 </tr>
	 <tr>
	 <td height="500">내용</td>
	 <td colspan="3"><%=rs.getString("content").replace("\r\n","<br>") %></td>
	 </tr>
	 <tr align="center">
	 <td colspan="2"><input type="button" onclick="location='update.jsp?id=<%=rs.getInt("id") %>'" value="수정"> </td>
	 <td colspan="2"><input type="button" onclick="view(this.form)" value="삭제"></td>
	 </tr>
	 <tr>
	 <td colspan="4" align="center"><a href="list.jsp">목록</a></td>
	 </tr>
	 <form method="post" action="delete.jsp">
	 <input type="hidden" name="id" value="<%=rs.getInt("id") %>">
	 <tr id="del" style="visibility:hidden;">
	 <td colspan="4" align="center"><input type="password" name="pwd" placeholder="비밀번호입력">
	 <input type="submit" value="삭제"></td> 
	 </tr>
	 </form>
	 
	 
	 
	 </table>
	 
</body>
</html>

<% bd.close();%>