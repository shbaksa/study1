<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
     var today=new Date();
     var y=today.getFullYear();
     var m=today.getMonth()+1; // 0~11
     var d=today.getDate();
     var hh=today.getHours();
     var mm=today.getMinutes();
     var ss=today.getSeconds();
     alert(y+"년 "+m+"월 "+d+"일 "+hh+"시 "+mm+"분 "+ss+"초");
  </script>
</head>
<body> <!-- date.jsp -->

</body>
</html>