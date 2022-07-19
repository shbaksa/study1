<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- member/pwd_change.jsp -->
<c:import url="../top.jsp" />


<div id="pwd_change_section">
	<form name="pwd_change_pkc" method="post"
		action="../member/pwd_change_ok.jsp"
		onsubmit="return pwd_change_chk()">
		<input type="password" name="old_pwd" placeholder="기존비밀번호">
		<p>
			<input type="password" name="pwd" placeholder="변경할 비밀번호">
		<p>
			<input type="password" name="pwd2"
				onkeyup="pwd_change_err(this.value)" placeholder="변경할 비밀번호 확인">
		<p>
			<span id="pwd_change_err"></span>
		<p>
			<input type="submit" value="비밀번호 변경">
			<%
			if (request.getParameter("pwdchangeerr") != null) {
			%>
		
		<div style="font-size: 12px; color: red;">비밀번호를 잘못 입력하셨습니다</div>
		<%
		}
		%>
	</form>
</div>



<c:import url="../bottom.jsp" />