<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- form_input_ok.jsp -->

	<!-- 다양한 폼태그를 request로 받기 -->
	
	<%
		// 키보드 입력받기
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		String sogae=request.getParameter("sogae");
		
		out.print(name+"<p>");
		out.print(pwd);
		out.print("<p>");
		out.print(sogae+"<p>");
		
		// 마우스로 선택하는것 받기
		String sung = request.getParameter("sung");
		String hobby = request.getParameter("hobby");
		String area = request.getParameter("area");
		out.print(sung+"<p>"+hobby+"<p>"+area); 
		out.print("<p>");
		
		out.print("<hr>");
		
		// checkbox는 여러개가 선택되므로 처리방법이 다르다
		String[] hobby1 = request.getParameterValues("hobby");
		
		for(int i=0;i<hobby1.length;i++)
		{
			out.print(hobby1[i]+" ");	
		}
		out.print("<p>");
		
		
	%>








	<p> <a href="form_input.jsp"> 뒤로가기 </a>
</body>
</html>