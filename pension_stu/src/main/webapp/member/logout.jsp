<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.MemberDao" %> 
 <!-- member/logout.jsp -->    
 <%
 	MemberDao mdao = new MemberDao();
 
 	mdao.logout(session, response);
 %>
