<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- member_input_ok.jsp -->
<%@ page import="member.Member_Dao"%>

	<%
	
		Member_Dao md = new Member_Dao();
	
		md.insert(request);
		
		// 여기서만 request를 통해 이전 문서에 폼의 값
		// 현재문서의 request
		
		response.sendRedirect("list.jsp");
	%>