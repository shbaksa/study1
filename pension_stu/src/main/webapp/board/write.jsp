<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- board/write.jsp -->
<c:import url="../top.jsp" />

<div id="board_write_section">
	<form method="post" action="../board/write_ok.jsp">
		<table width="500" align="center">
			<caption>
				<h2>게시판 글쓰기</h2>
			</caption>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<c:if test="${userid==null}">
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			</c:if>
			<tr>
				<td>내용</td>
				<td><textarea rows="6" cols="40" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="글쓰기"></td>
			</tr>
		</table>
	</form>
</div>

<c:import url="../bottom.jsp" />