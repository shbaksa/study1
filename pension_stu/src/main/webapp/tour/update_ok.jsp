<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.TourDao"%>

<%
	TourDao tdao = new TourDao();
	tdao.reupdate(request, response);
%>