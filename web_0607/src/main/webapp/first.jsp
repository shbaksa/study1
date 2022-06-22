<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function move()
   {
	   location="second.jsp";
   }
 </script>
</head>
<body> <!-- first.jsp -->
   <!-- a태그 -->
   <a href="second.jsp"> second.jsp로 이동 </a> <p>
   <hr>
   <!-- javascript -->
   <span onclick="move()"> second로 이동 </span> <p>
   <hr>
   <!-- form태그 -->
   <form method="post" action="second.jsp">
     <input type="submit" value="second이동">
   </form>
   
     <!-- 
     웹에서 A문서에서 B문서로 이동하는 방법
     1. a태그를 이용한 이동
     2. javascript를 이용한 이동
     3. form태그를 이용한 이동
   -->
</body>
</html>











