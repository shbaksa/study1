<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // logout.jsp
    // session영역에 변수를 X
    
    // session.removeAttribute(name)
    
    session.invalidate();

    response.sendRedirect("main.jsp");
%>