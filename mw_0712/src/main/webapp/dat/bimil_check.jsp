<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="dat.BoardDao" %>    
<%
   BoardDao bd = new BoardDao();
   bd.bimil_check(request,response);
%>






