<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
     // 문서를 읽을때 쿠키를 생성
     document.cookie="name=슈퍼맨";
     document.cookie="age=33";
    
     function view()
     {
    	// cook.innerText=document.cookie;
    	// document.all.아이디 접근  == 아이디
    	// document.all.cook == cook
    	document.getElementById("cook").innerText=document.cookie;
     }
     function del()
     {
    	 var today=new Date();
    	 today.setDate(today.getDate()-1);
    	 document.cookie="name=;expires="+today.toGMTString();
    	 alert(today.toGMTString());
     }
 </script>
</head>
<body> <!-- client_cookie.html => 자바스크립트를 이용하여 쿠키 만들기 -->
   <input type="button" onclick="view()" value="쿠키보기">
   <input type="button" onclick="del()" value="쿠키삭제">
   <hr>
   <span id="cook"></span>
</body>







