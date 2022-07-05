<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="sungjuk.Sungjuk_Dao" %>    
<%
   // write_ok.jsp : 폼의 값을 insert
   Sungjuk_Dao sdao=new Sungjuk_Dao();
   sdao.write_ok(request,response);
   /*
   request.setCharacterEncoding("utf-8");
   String name=request.getParameter("name");
   String kor=request.getParameter("kor");
   String eng=request.getParameter("eng");
   String mat=request.getParameter("mat");
   sdao.write_ok(name,kor,eng,mat);
   */
%>