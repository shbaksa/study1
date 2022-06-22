<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	// @가 붙으면 지시어 page, include, import   	
%>
<%@page import="java.util.Date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- start.jsp -->
	<!-- 웹 문서내에 자바코드를 넣는 법 -->
	<% // 스크립트릿 내에 자바코드를 선언하다. => 
		int num=test();
		out.print(num+num+num); 
		
	%> 
	<%
		Date today=new Date();
		int yoil=today.getDay();
		switch(yoil)
		{
			case 0 : out.print("일요일"); break;
			case 1 : out.print("월요일"); break;
			case 2 : out.print("화요일"); break;
			case 3 : out.print("수요일"); break;
			case 4 : out.print("목요일"); break;
			case 5 : out.print("금요일"); break;
			case 6 : out.print("토요일"); break;
		}
		
	%>
	
	<%! // 메소드는 !붙이고 사용 => 거의 사용X
		public int test()
		{
			return 111;
		}	
	%>
	

</body>
</html>

<!-- 클라이언트			서버
		요청(문서)		요청한 문서를 찾아서 컴파일 후 실행 후 결과물 클라이언트
	start.jsp 			start.jsp를 찾아서 start_jsp.java => 자바코드를 실행 => html,css,javascript






 -->