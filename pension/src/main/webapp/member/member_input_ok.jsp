<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDao" %>    
<%
     // member테이블에 저장한 후 login.jsp로 이동
     MemberDao mdao=new MemberDao();
     mdao.member_input_ok(request,response);
%>