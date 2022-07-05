<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="sungjuk.Sungjuk_Dao" %>    
<%
   // update_ok.jsp => 수정후 list로 이동
   Sungjuk_Dao sdao=new Sungjuk_Dao();
   sdao.update_ok(request,response);
%>