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
	   document.getElementById("aa").align="center";
	   document.getElementById("aa").style.color="blue";
	   // id는 가장 위에 있는 하나만 적용
   }
   function change2()
   {
	   // 이전 방식으로 지금은 거의 사용하지 않는다..
	   document.all.aa[1].style.color="red";
	   document.all.aa[2].style.color="blue";
	   document.all.aa[3].style.color="yellow";
   }
 </script>
</head>
<body>  <!-- dom2.jsp -->
  <!-- 태그 요소를 id로 접근하기 -->
  <input type="button" onclick="change()" value="함수호출">
  <input type="button" onclick="change2()" value="옛날방식">
  <div id="aa">안녕하세요</div> <p>
  <div id="aa">안녕하세요</div> <p>
  <div id="aa">안녕하세요</div> <p>
  <div id="aa">안녕하세요</div> <p>
  <div id="aa">안녕하세요</div> <p>
  <div id="aa">안녕하세요</div> <p>
</body>
</html>