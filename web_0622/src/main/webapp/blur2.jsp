<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa {
     color:red;
     font-size:12px;
   }
 </style>
 <script>
   function check()
   {
	   var pwd=document.pkc.pwd.value;
	   var pwd2=document.pkc.pwd2.value;
	   if(pwd!=pwd2)
	   {
		   document.getElementById("aa").innerText="비밀번호가 틀립니다";
	   }
	   else
	   {
		   document.getElementById("aa").innerText="";
	   }
   }
 </script>
</head>
<body> <!-- blur2.jsp -->
  <form name="pkc">
   비밀번호 <input type="password" name="pwd"> <p>
   비밀번호확인 <input type="password" name="pwd2" onblur="check()"> <p>
   <span id="aa"></span>
  </form>
</body>
</html>



