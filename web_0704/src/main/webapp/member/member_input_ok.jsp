<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- member_input_ok.jsp -->
<%@page import="member.Member_Dao" %>
<%
    Member_Dao mdao=new Member_Dao();
    mdao.insert(request);
    //여기서만 request를 통해 이전문서에 폼의 값
    // 현재문서의 request
    
    // 이동
    response.sendRedirect("list.jsp");
%>
