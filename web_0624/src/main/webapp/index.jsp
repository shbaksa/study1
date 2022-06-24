<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- index.jsp -->
  <%  // byte short int long  double floae boolean char
      // Byte, Short, Integer, Long, Double, Float, Boolean, Charactor : 기본자료형 형태의 클래스
      // Wrapper Class
      
      // 이 문서를 접근할때마다 application의 수를 증가
      String imsi=application.getAttribute("inwon").toString(); // toString() : 클래스를 문자열의 형태로
      Integer num=new Integer(imsi);
      out.print(num+"<br>");
      num++;
      application.setAttribute("inwon", num);
      out.print(num);
  %>
</body>
</html>