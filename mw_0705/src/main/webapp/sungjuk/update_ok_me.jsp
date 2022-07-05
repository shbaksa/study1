<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sungjuk.Sungjuk_Daoo"%>


	<%
		Sungjuk_Daoo sd = new Sungjuk_Daoo();
	
		sd.update_ok(request);
		
		response.sendRedirect("list_me.jsp");
	
	
	%>