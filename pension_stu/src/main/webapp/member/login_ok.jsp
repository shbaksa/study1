<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.MemberDao" %>
 <!-- member/login_ok.jsp -->    
	
	
	<%
		MemberDao mdao = new MemberDao();
	
		mdao.login_ok(request,response,session);
	
	
	%>
   
   	
   	
   	
