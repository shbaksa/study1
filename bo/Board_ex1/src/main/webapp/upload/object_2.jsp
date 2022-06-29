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


	if(session.getAttribute("userid") != null)
	{
		String temp = session.getAttribute("userid").toString();
		
		out.print(temp);
		
	}
	else
	{
		out.print("회원전용 페이지입니다.");
		//response.sendRedirect("object.jsp");
	}
	
	
%>

</body>
</html>