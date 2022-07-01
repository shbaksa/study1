<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // server_cookie_del.jsp
    
    Cookie cookie=new Cookie("name","");
    cookie.setMaxAge(0);
    response.addCookie(cookie);
%>