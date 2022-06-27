<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function check(my)  // my==document.pkc
   {
	   var phone=my.phone.value;  // -를 구분하여 잘라야 된다..
	   var pho=phone.split("-"); // pho[0],pho[1],pho[2]
	   my.p1.value=pho[0];
	   my.p2.value=pho[1];
	   my.p3.value=pho[2];
   }
 </script>
</head>
<body> <!-- string.jsp -->
  <!-- 전화번호를 입력하면 앞자리, 중간, 뒷자리를 잘라서 밑에 있는 폼에 넣기 -->
  <form name="pkc">
    전화번호 <input type="text" name="phone"> <p>
    <button type="button" onclick="check(this.form)"> 클릭 </button> <p>
    <input type="text" name="p1" size="3">-
    <input type="text" name="p2" size="3">-
    <input type="text" name="p3" size="3">
  </form>
</body> 
</html>