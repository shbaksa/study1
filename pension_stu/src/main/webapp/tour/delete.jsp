<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.TourDao"%>

<%
	TourDao tdao = new TourDao();
	tdao.redelete(request, response);
	/* out.print(request.getParameter("fname"));
	tdao.test(request); */
%>