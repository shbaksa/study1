<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- tour/write.jsp -->
<c:if test="${userid == null}">
	<c:redirect url="../member/login.jsp" />
</c:if>
<c:import url="../top.jsp" />


<div id="tour_write_section">

	<form method="post" action="../tour/write_ok.jsp"
		enctype="multipart/form-data">
		<!-- 파일 업로드할때 form 태그 enctype="multipart/form-data" 써주기 -->

		<table width="700" align="center">
			<caption>
				<h2>여 행 후 기 작 성</h2>
			</caption>
			<tr>
				<td>제 목</td>
				<td><input type="text" name="title" size="40"></td>
			</tr>
			<tr>
				<td height="400">내 용</td>
				<td><textarea rows="6" cols="40" name="content"></textarea></td>
			</tr>
			<tr>
				<td>파 일</td>
				<td><input type="file" name="fname"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="글작성"></td>
			</tr>
		</table>
	</form>



</div>



<c:import url="../bottom.jsp" />