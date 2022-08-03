<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <!-- 복사폼.jsp -->    
<c:import url="../top.jsp"/>
<style>
#section{
	width:1100px;
	height:500px;
	margin:auto;
}

</style>
<script>
$(function(){
	
	$("input[name=pwd2]").blur(function(){
		
		var pwd = $("input[name=pwd]").val();
		var pwd2 = $("input[name=pwd2]").val();
		
		if(pwd == pwd2){
			$("#pwderr").text("비밀번호 맞음").css("color","blue");			
		}
		else
			$("#pwderr").text("비밀번호 틀림").css("color","red");
			
	});
	
});

function pwdCheck(){
	
	if(document.pkc.pwd2.value.trim()==""){
		document.getElementById("pwderr").innerText="비빌번호 빈칸";
		return false;
	}
	else
		return true;
	
}

</script>
   	   
   <div id="section">
   	
   	
   	<form name="pkc" method="post" action="pwd_change_ok.jsp" onsubmit="return pwdCheck()">
   	
   	<table width="700" align="center">
   	<tr>
   	<td>현재비밀번호 </td>
   	<td><input type="password" name="oldpwd"></td>
   	</tr>
   	<tr>
   	<td>새 비밀번호</td>
   	<td><input type="password" name="pwd"></td>
   	</tr>
   	<tr>
   	<td>새 비밀번호 확인</td>
   	<td><input type="password" name="pwd2"><br>
   	<span id="pwderr" style="font-size:12px;"></span></td>
   	</tr>
   	<tr>
   	<td colspan="2"><input type="submit" value="비밀번호 변경"></td>
   	</tr>
   	
   	
   	</table>
   </form>
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>