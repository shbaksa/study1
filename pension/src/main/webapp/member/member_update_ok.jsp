<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDao" %>    
<%
    // 이메일,전화번호를 가져와서 dao를 통해 수정한 뒤  member_info로 이동
    MemberDao mdao=new MemberDao();
    mdao.member_update_ok(request,session,response);
%>