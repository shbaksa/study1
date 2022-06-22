<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- cal.jsp -->
  <!-- 총점과 평균을 구하기 -->
  <%
      // 값을 읽어오기
      int kor=Integer.parseInt(request.getParameter("kor"));
      int eng=Integer.parseInt(request.getParameter("eng"));
      int mat=Integer.parseInt(request.getParameter("mat"));
      // 총점
      int hap=kor+eng+mat;
      // 평균
      int avg=hap/3;
      // 출력
      out.print("총점 : "+hap);
      out.print("<p>");
      out.print("평균 : "+avg);
  %>
</body>
</html>




