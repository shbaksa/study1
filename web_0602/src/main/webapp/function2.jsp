<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   // 자바스크립트 함수 호출하기
   function test()
   {
	   alert("경고창 띄우기");
   }
   // 1. script태그내에서 함수를 호출
   //test();
   //test();
 </script>
</head>
<body> <!-- function2.jsp -->
   <!-- 2. 태그요소내에서 함수를 호출
           태그내에  이벤트핸들러="함수명()"
                   on이벤트
    -->
   <div onclick="test()"> 클릭 </div> <p>
   <span onclick="test()"> 클릭 </span> <p>
   <input type="button" value="클릭" onclick="test()">
</body>
</html>










