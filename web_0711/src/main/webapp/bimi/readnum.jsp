<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board_page.BoardDao" %>   
<%
    // readnum.jsp => 조회수를 1증가시킨 후 content.jsp로 이동
    BoardDao bdao=new BoardDao();
    bdao.readnum(request,response);
%>