<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    input[type=text] {
      border:1px solid #cccccc;
      outline:none; /* 커서가 들어갔을때 외곽의 두꺼워지는 선 */
    }
  </style>
  <script>
    function cursorin(my)
    {
    	 my.style.background="yellow";
    }
    function cursorout(my)
    {
    	 my.style.background="white";
    }
  </script>
</head>
<body>  <!-- focus_blur.jsp -->
 <!-- focus, blur => text입력폼 -->
 <input type="text" onfocus="cursorin(this)" onblur="cursorout(this)">
</body>
</html>





