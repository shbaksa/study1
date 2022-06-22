<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa {
     position:absolute;
     visibility:hidden;  /* <-> visible */
   }
 </style>
 <script>
   function view()
   {
	   //alert(event.pageX+" "+event.pageY); // 마우스의 좌표
	   document.getElementById("aa").style.visibility="visible";
	   document.getElementById("aa").style.left=event.pageX+"px";
	   document.getElementById("aa").style.top=event.pageY+"px";
   }
   //document.onclick=view;
 </script>
</head>
<body> <!-- test.jsp -->
  <td> <span onclick="view()"> 오늘은 월요일입니다 </span></td> <!-- 클릭하면 비밀번호 입력창이 보이게 -->
  <td> <span onclick="view()"> 오늘은 월요일입니다 </span></td> <!-- 클릭하면 비밀번호 입력창이 보이게 -->
  <td> <span onclick="view()"> 오늘은 월요일입니다 </span></td> <!-- 클릭하면 비밀번호 입력창이 보이게 -->
  <td> <span onclick="view()"> 오늘은 월요일입니다 </span></td> <!-- 클릭하면 비밀번호 입력창이 보이게 -->
  <td> <span onclick="view()"> 오늘은 월요일입니다 </span></td> <!-- 클릭하면 비밀번호 입력창이 보이게 -->
  
  <form id="aa">
    비번 <input type="password" name="pwd">
  </form>
</body>
</html>