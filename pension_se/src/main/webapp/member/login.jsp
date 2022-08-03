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
	text-align:center;
}
#section input[type=text] {
	margin-top:50px;
	width: 300px;
	height: 40px;
	border: 1px solid purple;
	outline: none;
}

#section input[type=password] {
	width: 300px;
	height: 40px;
	border: 1px solid purple;
	outline: none;
}

#section input[type=submit] {
	width: 300px;
	height: 40px;
	border: 1px solid purple;
	outline: none;
	background: purple;
	color: white;
	font-size: 20px;
}
#loginSearch .btn{
	width:300px;
	height: 40px;
	border: 1px solid green;
	outline:none;
	font-size:20px;
	margin-top:15px;
	margin-left:20px;
}
#useridSearch, #pwdSearch{
	margin-top:20px;
	display:none;
}
#search{
	margin-top:15px;
}
</style>

<script>

$(function(){
	
	$(".btn").eq(0).click(function(){
		
		$("#useridSearch").css("display","block");
		$("#pwdSearch").css("display","none");
		$("#pwdSearch input[name=userid]").val("");
		$("#pwdSearch input[name=name]").val("");
		$("#pwdSearch input[name=phone]").val("");
	});
	
	$(".btn").eq(1).click(function(){
		
		$("#useridSearch").css("display","none");
		$("#pwdSearch").css("display","block");
		$("#useridSearch input[name=name]").val("");
		$("#useridSearch input[name=phone]").val("");
	});
});



function idSearch(){
	
	var name = document.pkc1.name.value;
	var phone = document.pkc1.phone.value;
	
	var search = new XMLHttpRequest();
	search.open("get","member_useridsearch.jsp?name="+name+"&phone="+phone);
	search.send();
	
	search.onreadystatechange = function(){
		
		if(search.readyState == 4){
			
			
			var id = search.responseText.trim();
			
			if(id=="1"){
				
				alert("정보가 틀립니다");
			}
			else
				document.getElementById("searchinn").innerText="당신의 아이디는 "+id+" 입니다";
		}
	}
	
}
function dbpwdSearch(){
	
	var userid = document.pkc2.userid.value;
	var name = document.pkc2.name.value;
	var phone = document.pkc2.phone.value;
	
	var sse = new XMLHttpRequest();
	sse.open("get","member_pwdsearch.jsp?userid="+userid+"&name="+name+"&phone="+phone);
	sse.send();
	
	sse.onreadystatechange = function(){
		
		if(sse.readyState == 4){
			
			var pp = sse.responseText.trim();
			
			if(pp == "1")
				alert("정보가 틀립니다");			
			else
				document.getElementById("searchinn").innerText="당신의 비밀번호는 "+pp+" 입니다";
		}
		
	}
	
	
}

</script>
   	   
   <div id="section">
   
   	<form method="post" action="../member/login_ok.jsp">
   	
   	<input type="text" name="userid" placeholder="아이디입력"><p>
   	<input type="password" name="pwd" placeholder="비밀번호 입력"><p>
   	<input type="submit" value="로그인">
   	
   	</form>
   <div id="loginSearch">
  	<span class="btn">아이디찾기</span>
  	<span class="btn">비밀번호 찾기</span>
   </div>
   
   <span id="searchinn" style="font-size:12px;"></span>
   
   <div id="useridSearch" >
   <form name="pkc1">
   	<input type="text" name="name"  placeholder="이름입력"><p>
   	<input type="text" name="phone"  placeholder="전화번호 입력"><p>
   	<input type="button" onclick="idSearch()" value="아이디찾기">   <p>
   </form>
   </div>
   
   <div id="pwdSearch">
   
   <form name="pkc2">
   <input type="text" name="userid"  placeholder="아이디입력"><p>
   <input type="text" name="name"  placeholder="이름입력"><p>
   <input type="text" name="phone"  placeholder="전화번호 입력"><p>
   <input type="button" onclick="dbpwdSearch()" value="비밀번호 찾기"><p>
   </form>
   </div>
   
   
   
   </div>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>