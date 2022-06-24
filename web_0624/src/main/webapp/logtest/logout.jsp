<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    session.invalidate(); // session.removeAttribute("변수명")
    
    response.sendRedirect("main.jsp");
%>