<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- tour/content.jsp -->
<%@ page import="dao.TourDao"%>
<%
TourDao tdao = new TourDao();
tdao.content(request);
%>
<c:import url="../top.jsp" />


<div id="tour_content_section">

	<table width="900" align="center">
		<caption>
			<h2>여 행 후 기</h2>
		</caption>
		<tr>
			<td width="70">제목</td>
			<td width="150">${tdto.title}</td>
			<td width="70">조회수</td>
			<td width="70">${tdto.readnum}</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${tdto.userid}</td>
			<td>작성일</td>
			<td>${tdto.writeday}</td>
		</tr>
		<tr>
			<td>사진</td>
			<td colspan="3"><img src="../tour/img/${tdto.fname}" width="150"
				height="150"></td>
		</tr>
		<tr>
			<td height="400">내용</td>
			<td colspan="3">${tdto.content}</td>
		</tr>
		<tr>
			<td colspan="4" align="center"><a href="../tour/list.jsp">목록</a>
				<c:if test="${userid==tdto.userid}">
					<a href="../tour/update.jsp?id=${tdto.id}">수정</a>
					<a href="../tour/delete.jsp?id=${tdto.id}">삭제</a>
				</c:if></td>
		</tr>

	</table>





</div>



<c:import url="../bottom.jsp" />