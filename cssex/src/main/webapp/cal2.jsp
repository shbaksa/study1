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
	 /*	int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));
		int c = Integer.parseInt(request.getParameter("c"));
		int d = Integer.parseInt(request.getParameter("d"));
		int e = Integer.parseInt(request.getParameter("e"));
		*/
		
		int a1 = Integer.parseInt(request.getParameter("a1"));
		int b1 = Integer.parseInt(request.getParameter("b1"));
		
		
		int sum = 0;
		
		for(int i=a1; i<=b1; i++)
		{
			if(i%2 == 0)
			{
				sum += i;
			}
		}
		
		out.print("결과는 = " + sum);		
		// out.print(" A= " + a + " B= " + b + " C= " + c + " D= " + d + " E= " + e);		

%>
<p>
<a href="form2.jsp">뒤로가기</a>
</body>
</html>