<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.GongjiDao"%>
<%
GongjiDao gdao = new GongjiDao();
gdao.content(request);
%>
<!-- Gongji/content.jsp -->
<c:import url="../top.jsp" />


<div id="gongji_content_section">

	<table width="700" align="center">
		<caption>
			<h2>공 지 사 항</h2>
		</caption>
		<tr>
			<td width="400">${gdto.title}</td>
			<td width="80">${gdto.writeday}</td>
		</tr>
		<tr height="200">
			<td colspan="2">${gdto.content}</td>
		</tr>
		<tr>
			<td colspan="2"><a href="../gongji/list.jsp">목록</a> <c:if
					test="${userid=='admin'}">
					<a href="../gongji/update.jsp?id=${gdto.id}">수정</a>
					<a href="../gongji/delete.jsp?id=${gdto.id}">삭제</a>
				</c:if></td>
		</tr>
	</table>



</div>



<c:import url="../bottom.jsp" />