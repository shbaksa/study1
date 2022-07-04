<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="mw_0704.Test2" %>
	
	<%
		Test2 t = new Test2();
		
		int hap = t.hap();
		
		int hap2 = t.hap2();
		
		int avg = t.avg(60,80,90);
		
		
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- view2.jsp -->
	
	<!-- 
		Test2에 필요한 메소드를 생성후 완성하기
	 -->
	 
	 <!-- 1. 1부터 100까지의 합을 출력 -->
	 1~100까지의 합 : <%=hap %>  <p>
	 
	 <!-- 2. 1~200까지의 짝수의 합을 출력 -->
	 1~200까지의 짝수의 합 : <%=hap2 %>  <p>
	 
	 <!-- 60,80,90 3개의 점수를 전달하여 평균을 출력 -->
	 국,영,수 평균 : <%=avg %>  <p>
</body>
</html>