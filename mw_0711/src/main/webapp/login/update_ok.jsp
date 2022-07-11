<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "login.BoardDao"%>

	<%
		BoardDao bd = new BoardDao();
	
		bd.check_session(session, response);
		
		/* out.print(request.getParameter("id")); */
		 bd.update(request,response,session); 

	
	%>