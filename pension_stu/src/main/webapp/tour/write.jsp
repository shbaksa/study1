<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- tour/write.jsp -->
<%-- <c:if test="${userid == null}">
	<c:redirect url="../member/login.jsp" />
</c:if> --%>
<c:import url="../top.jsp" />
<script>
	var size = 1; // id="outer" 안에 있는 type="file"의 갯수, name을 서로 다르게 하기 위해 사용

	function add() {
		
		size++;
		var outer = document.getElementById("outer");
		var inner = "<p class='fname'><input type='file' class='aa' name='fname"+size+"'></p>"
		//document.getElementById("outer").innerHTML=document.getElementById("outer").innerHTML+inner;
		outer.innerHTML = outer.innerHTML + inner;
	}
	function del() {

		if (size > 1) {
			document.getElementsByClassName("fname")[size - 1].remove();
			size--;
		}
	}
</script>

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
				<td id="outer">
				<input type="button" onclick="add()" value="추가">
				<input type="button" onclick="del()" value="삭제">	
				<p class="fname"><input type="file" name="fname1"></p>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="글작성"></td>
			</tr>
		</table>
	</form>



</div>



<c:import url="../bottom.jsp" />