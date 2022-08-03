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
		
		if(pwd==pwd2)
			$("#pwderr").text("비밀번호가 확인");
		else
			$("#pwderr").text("비밀번호 틀림");
		
	});
	
	
});
 function empty(){
	
	var n = document.pkc.name.value;
	var p = document.pkc.phone.value;
	var e = document.pkc.email.value;
	
	if(n=="" || p=="" || e==""){
		alert("빈칸을 채워주세요");
		return false;
	}
	else
		return true;
} 

 var useridChk=0;
 
 function useridCheck(userid){
	 
	 if(userid.trim() == ""){
		 
		 alert("아이디는 빈값을 사용 할 수 없습니다");
		 useridChk=0;
		 document.getElementById("useriderr").innerText="";
	 }
	 else{
		 
		 var useridChk = new XMLHttpRequest();
		 useridChk.open("get","userid_check.jsp?userid="+userid);
		 useridChk.send();
		 
		 useridChk.onreadystatechange = function(){
			 
			 if(useridChk.readyState == 4){
				 
				 if(useridChk.responseText.trim() == "0"){
					 document.getElementById("useriderr").innerText="사용 가능한 아이디";
					 document.getElementById("useriderr").style.color="blue";
					 useridChk=1;
				 }
				 else if(useridChk.responseText.trim() == "1"){
					 document.getElementById("useriderr").innerText="사용 불가능한 아이디";
					 document.getElementById("useriderr").style.color="red";
					 useridChk=0;
				 }
			 }
		 }
	 }
		 
 }

</script>
   	   
   	   
   <div id="section">
   
   
   <form name="pkc" method="post" action="member_input_ok.jsp" onsubmit="return empty()">
   <table width="700" align="center">
   <caption><h2>회 원 가 입</h2></caption>
   <tr>
   <td>아이디</td>
   <td><input type="text" name="userid" onblur="useridCheck(this.value)"><br>
   <span id="useriderr" style="font-size:12px;"></span></td>
   </tr>
   
   <tr>
   <td>이 름</td>
   <td><input type="text" name="name"></td>
   </tr>
   
   <tr>
   <td>전화번호</td>
   <td><input type="text" name="phone"></td>
   </tr>
   
   <tr>
   <td>이메일</td>
   <td><input type="text" name="email"></td>
   </tr>
   
   <tr>
   <td>비밀번호</td>
   <td><input type="password" name="pwd"></td>
   </tr>
   
   <tr>
   <td>비밀번호 확인</td>
   <td><input type="password" name="pwd2"> <br>
   <span id="pwderr" style="font-size:12px"></span></td>
   </tr>
   
   <tr>
   <td colspan="2"><input type="submit" id="submit" value="회원가입"></td>
 	</tr>
   </table>
   </form>
   
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>