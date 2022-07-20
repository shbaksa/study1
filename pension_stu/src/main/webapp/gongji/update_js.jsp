<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.GongjiDao"%>
<%
GongjiDao gdao = new GongjiDao();
gdao.update(request);
%>
<!-- Gongji/update.jsp -->
<c:import url="../top.jsp" />
<script>
	window.onload = function() {
		// gubun의 값이 1이면 checkbox를 체크되게 한다.
		<c:if test="${gdto.gubun==1}">
		document.getElementById("gubun").checked = true;
		</c:if>
	};
</script>

<div id="gongji_update_section">

	<form method="post" action="../gongji/write_ok.jsp">
		<input type="hidden" name="id" value="${gdto.id}">
		<table width="500" align="center">
			<caption>
				<h2>공지사항 작성</h2>
			</caption>
			<tr>
				<td>제 목</td>
				<td><input type="text" name="title" value="${gdto.title}"></td>
			</tr>
			<tr>
				<td>내 용</td>
				<td><textarea rows="5" cols="40" name="content">${gdto.content}</textarea></td>
			</tr>
			<tr>
				<!-- javascript => js파일 -->
				<td colspan="2"><input type="checkbox" name="gubun" value="1"
					id="gubun"> 이 글을 항상 첫페이지에 출력하고자 하면 체크하세요</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="저장"></td>
		</table>
	</form>

</div>



<c:import url="../bottom.jsp" />