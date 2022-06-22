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
	   alert();
   }
 </script>
</head>
<body> <!-- keyevent.jsp : keydown, keypress, keyup -->
  <!-- keydown,keypress : 키를 누를때 전달(해당키값이 전달되기 전)  -->
  <!-- keyup : 키를 누를때 전달(해당키값이 전달) -->
  keydown : <input type="text" onkeydown="chk()"> <p>
  keypress : <input type="text" onkeypress="chk()"> <p>
  keyup : <input type="text" onkeyup="chk()"> <p>
</body>
</html>







