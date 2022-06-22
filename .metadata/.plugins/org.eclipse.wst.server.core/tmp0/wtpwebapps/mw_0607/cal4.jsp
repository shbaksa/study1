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
 	int hap=0;
 	int n = Integer.parseInt(request.getParameter("n"));
 	for(int i=0;i<=100;i++)
 	{
 		if(i%n == 0) 
		{
		 hap+=i;
		}
 	}
 	out.print(hap+"<p>");
 	%>
 	<p> <a href="form3.jsp"> 뒤로가기 </a>

</body>
</html>