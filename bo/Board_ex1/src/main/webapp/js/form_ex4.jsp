<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   hr {
     border-width:3px;
     border-color:red;
     background:red;
   }
 </style>
</head>
<body>  <!-- 0615/form_ex4.jsp -->
  <!-- 하나의 폼태그는 하나의 문서로 전달 -->
  <form method="post" action="a.jsp">
    <input type="submit" value="a전송">
  </form>
  <hr>
  <form method="post" action="b.jsp">
    <input type="submit" value="b전송">
  </form>
  <hr>
  <form method="post" action="c.jsp">
    <input type="submit" value="c전송">
  </form>
  <hr>
</body>
</html>