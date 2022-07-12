<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao"%>

	<%
		BoardDao bd = new BoardDao();
	
		bd.write_ok(request, response);
	%>