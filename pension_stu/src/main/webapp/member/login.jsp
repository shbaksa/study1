<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- member/login.jsp -->
<c:import url="../top.jsp" />

<style>
#login_section {
	width: 1100px;
	height: 800px;
	margin: auto;
	text-align: center;
}
#loginForm{
	margin-top:100px;
}

#login_section input[type=text] {	
	width: 300px;
	height: 40px;
	border: 1px solid purple;
	outline: none;
}

#login_section input[type=password] {
	width: 300px;
	height: 40px;
	border: 1px solid purple;
	outline: none;
}

#login_section input[type=submit] {
	width: 300px;
	height: 40px;
	border: 1px solid purple;
	outline: none;
	background: purple;
	color: white;
	font-size: 20px;
}
#loginSearch{
	margin-top:5px;
}
#loginUseridForm , #loginPwdForm{	
	margin-top:20px;
	display:none; 
}
#msgPrint{
	margin-top:20px;
}


</style>

<script>

function login_userid_func(){
	
	document.getElementById("loginUseridForm").style.display="block";
	document.getElementById("loginPwdForm").style.display="none";
	document.pf.userid.value="";
	document.pf.name.value="";
	document.pf.phone.value="";
	document.getElementById("msgPrint").innerText="";
}
function login_pwd_func(){
	
	document.getElementById("loginPwdForm").style.display="block";
	document.getElementById("loginUseridForm").style.display="none";
	document.uf.name.value="";
	document.uf.phone.value="";
	document.getElementById("msgPrint").innerText="";
}

</script>


<div id="login_section">
	<form id="loginForm" method="post" action="login_ok.jsp">
		<input type="text" name="userid" placeholder="아이디입력">
		<p>
			<input type="password" name="pwd" placeholder="비밀번호입력">
		<p>

			<input type="submit" value="로그인">
			<%-- <%
			if (request.getParameter("loginerr") != null) {
			%>
		
		<div style="font-size: 12px; color: red;">아이디 혹은 비밀번호를 잘못
			입력하셨습니다.</div>
		<%
		}
		%> --%>
		<c:if test="${chk==5}">
			<div style="font-size: 12px; color: red;">아이디 혹은 비밀번호를 잘못 입력하셨습니다.
			<% session.removeAttribute("chk"); %></div>
		</c:if>
	
		<%-- <c:if test="${loginerr!=null}">
		<div style="font-size: 12px; color: red;">아이디 혹은 비밀번호를 잘못
			입력하셨습니다.</div>
		</c:if> --%>
	</form>
	
	
	<div id="loginSearch">
		<span id="btn" onclick="login_userid_func()"> 아이디 찾기</span>
		<span id="btn" onclick="login_pwd_func()">비밀번호 찾기</span>
	</div>

	<div id="loginUseridForm">
	<form name="uf" method="post" action="member_login_userid_search.jsp">
		<input type="text" name="name" placeholder="이름입력"><p>
		<input type="text" name="phone" placeholder="전화번호"><p>
		<input type="submit" value="아이디찾기">
	</form>
	
	</div>
	<div id="loginPwdForm">
	<form name="pf" method="post" action="member_login_pwd_search.jsp">
		<input type="text" name="userid" placeholder="아이디입력"><p>
		<input type="text" name="name" placeholder="이름입력"><p>
		<input type="text" name="phone" placeholder="전화번호"><p>
		<input type="submit" value="비밀번호찾기">
	</form>
	</div>
	
	<div id="msgPrint">
	<c:if test="${chk==1}">
	<div id="msg_print"> 아이디 : ${useridSearch}
	<% session.removeAttribute("useridSearch"); session.removeAttribute("chk"); %></div>
	</c:if>
	<c:if test="${chk==2}">
	<div id="msg_print"> 정보가 일치하지 않습니다.
	<% session.removeAttribute("chk"); %> </div>
	</c:if>
	<c:if test="${chk==3}">
	<div id="msg_print"> 비밀번호 : ${pwdSearch}
	<% session.removeAttribute("pwdSearch"); session.removeAttribute("chk"); %> </div>
	</c:if>
	<c:if test="${chk==4}">
	<div id="msg_print"> 정보가 일치하지 않습니다. 
	<% session.removeAttribute("chk"); %></div>
	</c:if>
	</div>
</div>


<c:import url="../bottom.jsp" />