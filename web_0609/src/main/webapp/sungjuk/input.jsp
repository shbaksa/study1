<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- input.jsp -->
  <form method="post" action="input_ok.jsp">
     학번 <input type="text" name="hakbun"> <p>
     이름 <input type="text" name="name"> <p>
     국어 <input type="text" name="kor"> <p>
     영어 <input type="text" name="eng"> <p>
     수학 <input type="text" name="mat"> <p>
     <input type="submit" value="입력">
  </form>
</body>
</html>