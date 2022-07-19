<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.BoardDao"%>
<%
BoardDao bdao = new BoardDao();
bdao.content(request);
%>
<!-- board/content.jsp -->
<c:import url="../top.jsp" />

<div id="board_content_section">
	<table width="900" align="center">
		<caption>
			<h2>게시판 내용</h2>
		</caption>
		<tr>
			<td height="40">제목</td>
			<td colspan="3">${bdto.title}</td>
		</tr>
		<tr>
			<td width="80" height="30">아이디</td>
			<td width="120">${bdto.userid}</td>
			<td width="80">조회수</td>
			<td width="80">${bdto.readnum}</td>
		</tr>
		<tr>
			<td height="500">내용</td>
			<td colspan="3">${bdto.content}</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td colspan="3">${bdto.writeday}</td>
		</tr>
		<tr>
			<td colspan="4" height="30"><a href="../board/list.jsp">목록</a> <!-- 
			 	보이는 경우
			 	- board테이블의 userid값이 guest인 경우
			 	- board테이블의 userid와 세션의 userid가 같은 경우
			 	
			 	안보이는 경우
			 	- board테이블의 userid값이 guest가 아니고
			 	- board테이블의 userid와 세션의 userid가 다른 경우
			 --> <!-- 보이는 경우 --> <c:if
					test="${bdto.userid=='guest' || bdto.userid==userid}">
					<a href="../board/update.jsp?id=${bdto.id}">수정</a>

					<c:if test="${bdto.userid=='guest'}">
						<!-- guest일 경우 삭제 입력폼이 존재 -->
						<a href="javascript:board_content_del_form()"> 삭제 </a>
					</c:if>
					<c:if test="${bdto.userid==userid}">
						<!-- 로그인을 한경우 자신이 작성한 글 -->
						<a href="../board/delete.jsp?id=${bdto.id}">삭제</a>
					</c:if>
				</c:if>
		</tr>
		<tr id="board_content_delete">
			<!-- 삭제폼을 가지는 tr -->
			<form method="post" action="../board/delete.jsp?id=${bdto.id}">
				<input type="hidden" name="id" value="${bdto.id}">
			<td colspan="4"><input type="password" name="pwd"
				placeholder="비밀번호 입력"> <input type="submit" value="삭제"></td>
			</form>
		</tr>

	</table>

</div>
<!-- <script>
	function board_content_del_form() {
		document.getElementById("board_content_delete").style.display = "table-row";
	}
</script>
 -->

<c:import url="../bottom.jsp" />