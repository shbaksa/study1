<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.Member_Dao" %>    
<%
    // 해당 레코드를 삭제하고 list로 이동
    
    Member_Dao mdao=new Member_Dao();
    mdao.delete(request);
    // list로 이동
    response.sendRedirect("list.jsp");
%>