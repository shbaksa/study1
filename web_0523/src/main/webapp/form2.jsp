<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- form2.jsp -->
  <!-- form태그의 역할 => action에 있는 문서에 값을 전달 -->
  <form method="post" action="a.jsp">
   <input type="text" name="name"> 
   <input type="submit" value="전송">
  </form>
  <hr>
  <form method="get" action="a.jsp">
   <input type="text" name="name"> 
   <input type="submit" value="전송">
  </form>
</body>
</html>