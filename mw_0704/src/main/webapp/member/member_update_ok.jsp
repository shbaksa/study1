<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import="member.Member_Dao"%>

	<%
		Member_Dao md = new Member_Dao();
		
		md.update(request);
		
		response.sendRedirect("list.jsp");
	
	%>
	