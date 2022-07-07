<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="board_me.Board" %>
<%@ page import="java.sql.ResultSet" %>
	<%
		Board b = new Board();
		ResultSet rs = b.list(request);
		
		int pager = b.getpage(request)[0];
		int pstart = b.getpage(request)[1];
		int pend = b.getpage(request)[2];
		int chong = b.getpage(request)[3];
		String str="";
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#aa a{
		text-decoration: none;
		color : skyblue;
		font-size : 16px;
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
    <% } %>
    <tr id="aa">
    <td colspan="4" align="center">
    <%if(pager != 0 && pager > 1){ %>
    <a href="list2.jsp?page=1"> 처음 </a>
    <% } %>
    <%if(pstart != 1){ %>
    <a href="list2.jsp?page=<%=pstart -1 %>">10쪽</a>
    <%} %>
    <%if(pager != 1){ %>
    <a href="list2.jsp?page=<%=pager-1 %>"> < </a>
	<%} %>    
    <%for(int i=pstart;i<=pend;i++) { 
    	if(pager==i)
    		str=str+"style='color:red;'";
    		else
    		str="";%>  		
    <a <%=str %>href="list2.jsp?page=<%=i %>"><%=i %></a>
    <% } %>
    <%if(pager != chong){ %>
    <a href="list2.jsp?page=<%=pager+1 %>"> > </a>
    <%} %>
    <%if(chong != pend) {%>
    <a href="list2.jsp?page=<%=pend+1 %>"> 10쪽</a>
    <%} %>
    <%if(pager < chong){ %>
    <a href="list2.jsp?page=<%=chong %>">마지막</a>
    <%} %>
    </td>
    </tr>
    
     <tr>
      <td colspan="4" align="right"> <a href="write.jsp"> 글쓰기 </a> </td>
    </tr>
  </table>
</body>
</html>