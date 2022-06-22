<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- cal2.jsp -->
  <%
     // a,b값 가져오기
     int a=Integer.parseInt(request.getParameter("a"));
     int b=Integer.parseInt(request.getParameter("b"));
  
     // a~b의 합 구하기
     // a의 값이 b보다 큰 경우 값을 교환
     if(a>b)
     {
    	 int imsi;
    	 imsi=a;
    	 a=b;
    	 b=imsi;
     }
     
     // 합 구하기
     int hap=0;
     for(int i=a;i<=b;i++)
     {
    	 hap=hap+i;
     }
     
     out.print("합 : "+hap);
  %>
</body>
</html>








