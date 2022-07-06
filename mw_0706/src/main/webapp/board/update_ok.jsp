<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao"%>

	<%
		BoardDao bd = new BoardDao();
		//out.print(request.getParameter("pwd"));
		
		bd.update(request,response);

	%>