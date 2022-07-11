<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="login.LoginDao" %>    
<%
   LoginDao ldao=new LoginDao();
   ldao.logout(session,response);
%>