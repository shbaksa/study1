<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "board_me.BoardDao" %>

	<%
		BoardDao bp = new BoardDao();
		ResultSet rs = bp.list(request);
		
		int pager = bp.getpage(request)[0];
		int pstart = bp.getpage(request)[1];
		int pend = bp.getpage(request)[2];
		int chong = bp.getpage(request)[3];
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#aa a{
	text-decoration: none;
	color:skyblue;
	font-size:18px;
}
a{
	text-decoration: none;
	color:black;
	font-size:20px
}
</style>
</head>
<body>
	<table width="900" border="1" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 작성자 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
    <%
      while(rs.next())
      {
    %>
    <tr>
      <td><a href=#> <%=rs.getString("title")%> </a> </td>
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getString("readnum")%> </td>
      <td> <%=rs.getString("writeday")%> </td>
    </tr>
    <%
      }
    %>
    <tr id="aa">
    <td colspan="4" align="center">
    <%if(pager != 0 && pager > 1) {%>
    <a href="list.jsp?page=1">처음</a>
    <%} %>
    <%if(pstart != 1){ %>
    <a href="list.jsp?page=<%=pstart-1 %>"> 10쪽 </a>
    <%} %>
    <%if(pager != 1) {%>
    <a href="list.jsp?page=<%=pager-1 %>"> < </a>
    <%} %>
    <% String str="";
    for(int i=pstart;i<=pend;i++){ %>
    <% if(pager == i)
    	str=str+"style='color:red;'";
    	else
    		str="";%>
    <a href="list.jsp?page=<%=i %>" <%=str %>><%=i %></a>
    <%} %>
    <%if(pager != chong){ %>
    <a href="list.jsp?page=<%=pager+1 %>"> > </a>
    <%} %>
    <%if(chong != pend){ %>
    <a href="list.jsp?page=<%=pend+1 %>"> 10쪽 </a>
    <%} %>
    <%if(pager < chong) { %>
    <a href="list.jsp?page=<%=chong %>">마지막</a>
    <%} %>
    </td>
    <tr>
    
    <tr>
      <td colspan="4" align="right"> <a href="write.jsp"> 글쓰기 </a> </td>
    </tr>
  </table>

</body>
</html>