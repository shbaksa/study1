<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dat.BoardDao" %>    
<%
    BoardDao bdao=new BoardDao();
    bdao.delete(request,response);
    
%>