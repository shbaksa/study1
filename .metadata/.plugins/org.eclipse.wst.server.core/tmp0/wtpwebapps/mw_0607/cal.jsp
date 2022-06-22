<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- cal.jsp -->

	<!-- 총점과 평균을 구하기 -->
	
	<% // Integer.parseInt(String값) String 값을 int 값으로 변환
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));
			
		int hap=kor+eng+mat;
		int avg=hap/3;
			
		out.print("합 : "+hap+"<p>");
		
		out.print("평균 : "+avg);
		%>
		
		<p> <a href="form.jsp"> 뒤로가기 </a>

</body>
</html>