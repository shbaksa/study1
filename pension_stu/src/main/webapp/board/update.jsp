<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.BoardDao"%>

<%
BoardDao bdao = new BoardDao();
bdao.update(request, response);
%>
<!-- board/update.jsp -->
<c:import url="../top.jsp" />

<div id="board_update_section">
	<form method="post" action="update_ok.jsp">
		<input type="hidden" name="id" value="${bdto.id}">
		<table width="500" align="center">
			<caption>
				<h2>게시판 글쓰기</h2>
			</caption>
			<tr>
				<td>제 목</td>
				<td><input type="text" name="title" value="${bdto.title}">
				</td>
			</tr>
			
			<c:if test="${userid == null || bdto.userid != userid}">
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
			</c:if>

			<tr>
				<td>내 용</td>
				<td><textarea cols="40" rows="6" name="content">${bdto.content}</textarea></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="글수정"></td>
			</tr>
		</table>
	</form>


</div>


<c:import url="../bottom.jsp" />