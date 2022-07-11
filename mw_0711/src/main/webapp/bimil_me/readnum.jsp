<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import="board.BoardDao"%>

	<%
		String id = request.getParameter("id");
		BoardDao bd = new BoardDao();
		
		bd.readnum(request,response);

	%>
	
	