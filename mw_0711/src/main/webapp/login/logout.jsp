<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="login.LoginDao" %>  
   
    <%
    	
    	LoginDao ld = new LoginDao();
    
    	ld.logout(response,session);
    
    %>