<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function test()
   {
	   var n=cal();
	   alert(n);
   }
   function cal()
   {
	   return 99;
   }
 </script>
</head>
<body> <!-- function_return2.jsp -->
  <div onclick="test()"> 함수호출 </div>
</body>
</html>