<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.MemberDao"%>
<!-- member/pwd_change_ok.jsp -->

<%
	MemberDao mdao = new MemberDao();
	
	mdao.pwd_change_ok(request,response,session);

%>