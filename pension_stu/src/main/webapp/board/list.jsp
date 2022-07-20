<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import = "dao.BoardDao" %>
<%
	BoardDao bdao = new BoardDao();
	bdao.list(request);
%>
 <!-- board/list.jsp -->    
<c:import url="../top.jsp"/>
   
   	<div id="board_list_section">
   	<table width="700" align="center">
   	<caption><h2>게시판 목록</h2></caption>
   	<tr>
   	<td width="400" >제목</td>
   	<td>아이디</td>
   	<td>조회수</td>
   	<td>작성일</td>
   	
   	</tr>
	
	<c:forEach items="${list}" var="bdto" >
	<tr>
   	<td align="left"><a href="../board/readnum.jsp?id=${bdto.id}">${bdto.title}</a></td>
   	<td>${bdto.userid}</td>
   	<td>${bdto.readnum}</td>
   	<td>${bdto.writeday}</td>
   	</tr>   	
   	</c:forEach>
   	<tr>
   	<td colspan="4" align="center"><a href="../board/write.jsp">글쓰기</a></td>
   	</table>
   	</div>
   	
   	
<c:import url="../bottom.jsp"/>