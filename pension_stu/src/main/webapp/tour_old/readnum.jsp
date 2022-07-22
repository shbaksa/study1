<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <!-- tour/readnum.jsp -->    
<%@ page import = "dao.TourDao"%>

<%
	TourDao tdao = new TourDao();
	tdao.readnum(request, response);
%>