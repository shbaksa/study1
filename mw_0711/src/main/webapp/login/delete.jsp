<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "login.BoardDao"%>

	<%
		BoardDao bd = new BoardDao();
	
		bd.check_session(session, response);
		
		bd.delete(request,response,session);
	%>