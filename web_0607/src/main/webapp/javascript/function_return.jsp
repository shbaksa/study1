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
    	return 99;
    }
  </script>
</head>
<body>  <!-- function_return.jsp -->
   <div onclick="test()"> 함수호출 </div>
   <!-- 함수 호출한 곳이 태그 : 리턴값이 의미가 없다 -->
</body>
</html>