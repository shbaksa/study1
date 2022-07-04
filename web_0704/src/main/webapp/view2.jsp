<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- view2.jsp -->
<%@page import="web_0704.Test2" %>
<%
    Test2 t2=new Test2();
    int r1=t2.hap1();
    int r2=t2.hap2();
    int r3=t2.average(60, 80, 90);
%>
  <!--  
     Test2에 필요한 메소드를 생성후 완성하기
  -->
  <!-- 1. 1부터 100까지의 합을 출력 -->
  1~100까지의 합 : <%=r1%>  <p>
  
  <!-- 2. 1~200까지의 짝수의 합을 출력 -->
  1~200까지 짝수의 합 : <%=r2%>    <p>
  
  <!-- 60,80,90 3개의 점수를 전달하여 평균을 출력 -->
  국,영,수 평균 :  <%=r3 %>  <p>
</body>
</html>








