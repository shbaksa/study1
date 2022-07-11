<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="login.BoardDao" %>
<%
    BoardDao bdao=new BoardDao();
    bdao.check_session(session,response);
    bdao.readnum(request,response);
%>   