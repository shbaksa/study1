<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.MemberDao"%>

<%
MemberDao mdao = new MemberDao();
mdao.member_info(session, request);

// jsp에 출력할 내용은 request객체영역에 저장을한다
// EL표현식으로 접근, JSTL을 사용
%>
<!-- member/info.jsp -->
<c:import url="../top.jsp" />
<style>


</style>

<div id="member_info_section">
	<!-- 아이디, 이름, 이메일, 전화번호 보여주기 -->
	<form method="post" action="../member/info_ok.jsp">
		<table width="400" align="center" >
			<caption>
				<h2>회원정보</h2>
			</caption>
			<tr>
				<td width="100">아이디</td>
				<td width="300">${mdto.userid}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${mdto.name}</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>${mdto.email}</td>			
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${mdto.phone}</td>			
			</tr>
			<tr>
				<td colspan="2">
				<span class="btn" onclick="location='../member/info_change.jsp'">정보 수정</span>
				<span class="btn" onclick="location='../member/pwd_change.jsp'">비밀번호 변경</span>
				<span class="btn" onclick="location='../member/member_out.jsp'"> 회원탈퇴 </span>
				</td>
			</tr>

		</table>
	</form>
</div>



<c:import url="../bottom.jsp" />