<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- member_input.jsp -->
<c:import url="../top.jsp" />
<!-- 
   	1. 회원아이디 조회
   	2. 비밀번호 일치여부
   	3. 필수 입력 (아이디,이름,전화번호)  
    -->
<div id="section">
	<form name="pkc" method="post" action="member_input_ok.jsp"
		onsubmit="return form_check(this)">
		<table width="500" align="center">
			<caption>
				<h2>회원 가입</h2>
			</caption>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid"
					onblur="userid_check(this.value)"> <br> <span
					id="iderr"></span></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="pwd2" onblur="pwd_check()">
					<br> <span id="pwderr"></span></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="mail">@<input type="text" name="mail2"><br>
				<select class="box" name="sele" onmouseout="val(thisn)">
					<option value="">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
				</select></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="회원가입"></td>
			</tr>

		</table>
	</form>
</div>



<c:import url="../bottom.jsp" />