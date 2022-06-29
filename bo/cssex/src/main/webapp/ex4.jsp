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
			int avg=0;
	
			int kor = Integer.parseInt(request.getParameter("kor"));
			int eng = Integer.parseInt(request.getParameter("eng"));	
			int mat = Integer.parseInt(request.getParameter("mat"));
			
			avg = (kor+eng+mat)/3;
	
			out.print("평균은 "+ avg + " 합은 " + avg*3);
	%>
	

<a href="ex1.jsp">뒤로가기</a>

</body>
</html>