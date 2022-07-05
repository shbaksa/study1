<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sungjuk.Sungjuk_Dao"%>

	<%
		Sungjuk_Dao sd = new Sungjuk_Dao();
		
		sd.delete(request);
		
		response.sendRedirect("list.jsp");
	
	%>