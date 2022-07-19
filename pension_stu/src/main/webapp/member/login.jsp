<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- member/login.jsp -->
<c:import url="../top.jsp" />



<div id="login_section">
	<form method="post" action="login_ok.jsp">
		<input type="text" name="userid" placeholder="아이디입력">
		<p>
			<input type="password" name="pwd" placeholder="비밀번호입력">
		<p>

			<input type="submit" value="로그인">
			<%
			if (request.getParameter("loginerr") != null) {
			%>
		
		<div style="font-size: 12px; color: red;">아이디 혹은 비밀번호를 잘못
			입력하셨습니다.</div>
		<%
		}
		%>
		<%-- <c:if test="${loginerr!=null}">
		<div style="font-size: 12px; color: red;">아이디 혹은 비밀번호를 잘못
			입력하셨습니다.</div>
		</c:if> --%>
	</form>
</div>


<c:import url="../bottom.jsp" />