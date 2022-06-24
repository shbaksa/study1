<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // session_start.jsp
    // session : 브라우저마다 발생하는 영역
    
    // session영역에 브라우저마다 접근하는 사용자의 구분할 수 있는 유일한 값을 이용하여 처리
    
    session.setAttribute("userid", "channy");

    // 회원들이 로그인을 하는 문서
%>