<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board_page.BoardDao" %>    
<%
    // 폼의 값을 받아와서 테이블에 저장후 list로 이동
    BoardDao bdao=new BoardDao();
    bdao.write_ok(request,response);
    
%>