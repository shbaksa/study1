<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // @가 붙으면 지시어 page, include , import
%>    
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- start.jsp -->
  <!-- 웹 문서내에 자바코드를 넣는 법 -->
  <%  // 스크립트릿 내에 자바코드를 선언한다.. => 
     int num=test();
     out.print(num);
  %>
  <%
     Date today=new Date();
     int yoil=today.getDay();
     out.print(yoil);
  %>
  <%!  // 메소드는 !붙이고 사용 => 거의 사용X
     public int test()
     {
	     return 111;
     }
  %>
</body>
</html>