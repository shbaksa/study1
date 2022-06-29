<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
    String food=request.getParameter("food");

    String sql="update vote set "+food+"="+food+" +1 where id=?";
    
    out.print(sql);
%>












