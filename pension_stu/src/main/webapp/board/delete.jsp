<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.BoardDao" %>
 <!-- board/delete.jsp -->    
 <%
 	// 삭제 한 후 list 이동
 	
 	BoardDao bdao = new BoardDao();
 	
 	bdao.dele(request, response);
 
 %>
