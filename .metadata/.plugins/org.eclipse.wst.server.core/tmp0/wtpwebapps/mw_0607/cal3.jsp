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
 	String a=request.getParameter("a");
 	String b=request.getParameter("b");
 	String c=request.getParameter("c");
 	String d=request.getParameter("d");
 	String f=request.getParameter("f");
 	
 	out.print("A점수 : "+a+"<p>"+"B점수 : "+b+"<p>"+"C점수 : "+c+"<p>"+"D점수 : "+d+"<p>"+"F점수 : "+f+"<p>");
 	%>
 	
 	<p><a href="form3.jsp"> 뒤로가기 </a>
 	
 	
 	

 	
 	
 	
 	
 	
 	

</body>
</html>