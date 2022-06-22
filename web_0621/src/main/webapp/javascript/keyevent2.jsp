<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function chk()
   {
	   return false;
   }
 </script>
</head>
<body> <!-- keyevent2.jsp : 누를때, 눌렀다 땔때 이용하여 확인 -->
  keydown : <input type="text" onkeydown="return chk()"> <p>
  keypress : <input type="text" onkeypress="return chk()"> <p>
  keyup : <input type="text" onkeyup="return chk()"> <p>
</body>
</html>