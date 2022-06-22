<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- cal2.jsp -->

	 <!-- a에서 b까지의 합을 구하여 출력하기 -->
	 
	 <%
	 int a = Integer.parseInt(request.getParameter("a"));
	 int b = Integer.parseInt(request.getParameter("b"));
	 int hap=0;
	 if(a<b)
	 {
		 for(int i=a;i<=b;i++)
		 {
			hap+=i;
			
		 }
		 out.print(a+"부터"+b+"까지 합 : "+hap);
	 }
	 else
	 {
		 for(int i=b;i<=a;i++)
		 {
			hap+=i;
			
		 }
		 out.print(b+"부터"+a+"까지 합 : "+hap);
	 }

	 %>
	<p> <a href="form2.jsp"> 뒤로가기 </a>
	 
</body>
</html>