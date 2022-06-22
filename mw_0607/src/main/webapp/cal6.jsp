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
	int a = Integer.parseInt(request.getParameter("a"));
	int b = Integer.parseInt(request.getParameter("b"));
	int n = Integer.parseInt(request.getParameter("n"));
	int imsi,hap=0;
	if(a>b)
	{
		imsi=a;
		a=b;
		b=imsi;
	}
	for(int i=a;i<=b;i++)
	{
		if(i%n == 0)
		{
			hap+=i;
		}
	}
	out.print(a+"부터"+b+"까지의"+n+"의배수 합 : "+hap+"<p>");
	
	%>
	<p> <a href="form3.jsp"> 뒤로가기 </a> 
</body>
</html>