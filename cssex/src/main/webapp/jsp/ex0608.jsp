<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		

		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String sg = request.getParameter("sg");
		
		String gender = request.getParameter("gender");
		
		String[] hobby = request.getParameterValues("hobby");
		String area = request.getParameter("area");	

		
%>

<hr>
<% for(int j=0; j<10; j++)	{%> 
<table width="400" border="1">

 <tr>
 	<td> <%=name %></td>
	<td> <%=pw %></td>
	<td> <%=sg %></td>
	<%	
		if(hobby != null){
		for(int i=0; i<hobby.length; i++)
		{ %>
			<td> <%=hobby[i] %></td>
		<%
		}
		}
		else
		{%>	<td> 취미 X </td>
		<% } %>
	<td> <%=gender %></td>
	<td> <%=area %></td>
</tr>
</table>
<% }%>


<p>
<a href="ex060801.jsp"> 뒤로가기</a>


</body>
</html>