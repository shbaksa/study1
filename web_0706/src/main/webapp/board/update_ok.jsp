<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.BoardDao" %>    
<%
    // 폼의 값을 읽어와서 수정후 content로 이동
    BoardDao bdao=new BoardDao();
    bdao.update_ok(request, response);
%>