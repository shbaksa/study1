<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   form {
     text-align:center;
   }
   input {
     width:300px;
     height:40px;
     border:1px solid green;
   }
   input[type=submit]  {
     width:306px;
   }
 </style>
</head>
<body> <!-- login.jsp -->
  <form method="post" action="login_ok.jsp">
    <input type="text" name="userid" placeholder="아이디"> <p>
    <input type="password" name="pwd" placeholder="비밀번호"><p>
    <input type="submit" value="로그인">
  </form>
</body>
</html>