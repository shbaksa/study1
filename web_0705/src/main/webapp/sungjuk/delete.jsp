<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="sungjuk.Sungjuk_Dao" %>    
<%
   // delete.jsp => 삭제후 list로 이동
   Sungjuk_Dao sdao=new Sungjuk_Dao();
   sdao.delete(request,response);
     
%>