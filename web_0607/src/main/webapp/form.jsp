<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- form.jsp -->
  <form method="post" action="cal.jsp">
    국어 <input type="text" name="kor"> <p>
    영어 <input type="text" name="eng"> <p>
    수학 <input type="text" name="mat"> <p>
    <input type="submit" value="성적처리">
  </form>
  <!-- 
    submit버튼이 클릭되면 action에 있는 주소로 이동
    단 폼태그내의 값을 가지고 간다..
   -->
</body>
</html>