<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- member/info_change.jsp -->
<c:import url="../top.jsp" />
<%@ page import = "dao.MemberDao" %>
<%
	MemberDao mdao = new MemberDao();
	mdao.info_change(request, session);	
%>

<div id="member_info_change_section">
	<!-- 아이디, 이름, 이메일, 전화번호 보여주기 -->
	<form method="post" action="../member/info_change_ok.jsp" onsubmit="return info_change_chk(this)">
		<table align="center">
			<caption>
				<h2>회원정보</h2>
			</caption>
			<tr>
				<td>아이디</td>
				<td>${mdto.userid}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${mdto.name}</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value="${mdto.email}"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" value="${mdto.phone}"></td>
			</tr>
			<tr>
			<td colspan="2"><input type="submit" value="정보수정"></td> 
			</tr>
		</table>
		<div id="info_change_err"></div>
	</form>
</div>



<c:import url="../bottom.jsp" />