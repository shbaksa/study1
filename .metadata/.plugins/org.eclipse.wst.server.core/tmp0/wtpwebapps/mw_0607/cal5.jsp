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
 	int aa=Integer.parseInt(request.getParameter("aa"));
 	
 	switch(aa)
 	{
 	case 1 : out.print("짜장면"); break;
 	case 2 : out.print("우동"); break;
 	case 3 : out.print("짬뽕"); break;
 	case 4 : out.print("탕수육"); break;
 	case 5 : out.print("팔보채"); break;	
 	}
 	%>
 	<p> <a href="form3.jsp"> 뒤로가기 </a>

</body>
</html>