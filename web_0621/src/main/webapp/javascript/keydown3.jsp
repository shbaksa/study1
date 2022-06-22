<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function check()
    {
    	alert(event.keyCode);
    }
  </script>
</head>
<body> <!-- keyevent3.jsp : keydown, keypress의 차이 -->
   <input type="text" onkeydown="check()"> <!-- 특수키를 event코드로 받는다 --><p>
   <input type="text" onkeypress="check()"> <!-- 특수키는 기능이 실행  --> <p>
</body>
</html>