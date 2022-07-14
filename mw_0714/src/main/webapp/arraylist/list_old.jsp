<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "arraylist.StudentDaoold" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "arraylist.StudentDtoold" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 	
	<%
 		StudentDaoold sdao = new StudentDaoold();
 		ArrayList<StudentDtoold> list = sdao.getStudent();
 			
 		/* StudentDto sdto = list.get(0);
 		out.print(sdto.getName()+"<p>");		
 		out.print(list.get(1).getName()+"<p>"); */
 				
 		// request영역으로 list를 저장
 		request.setAttribute("list", list);
 			
 		// --------------------------------------
 		request.setAttribute("size", list.size());
 		//out.print(request.getAttribute("size"));
 		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="i" begin="0" end="${size-1}" step="1">
		${list.get(i).getName()} <p>
	</c:forEach>
	<hr>
	<c:forEach items="${list}" var="sdto">
		${sdto.id} / ${sdto.age} / ${sdto.name} / ${sdto.phone} <p>
	</c:forEach>
	
</body>
</html>