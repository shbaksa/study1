<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function change()
    {
    	document.getElementsByClassName("aa")[0].align="right";
    	document.getElementsByClassName("aa")[3].style.color="red";
    	document.getElementsByClassName("aa")[2].style.fontSize="30px";
    }
  </script>
</head>
<body>  <!-- dom3.jsp -->
  <!-- class 요소 접근하기 -->
  <input type="button" onclick="change()" value="함수호출">
  <div class="aa">안녕하세요</div> <p>
  <div class="aa">안녕하세요</div> <p>
  <div class="aa">안녕하세요</div> <p>
  <div class="aa">안녕하세요</div> <p>
  <div class="aa">안녕하세요</div> <p>
  <div class="aa">안녕하세요</div> <p>
</body>
</html>