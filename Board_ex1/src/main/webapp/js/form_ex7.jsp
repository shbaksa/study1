<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function chg(name)
   {
	   document.getElementById("aa").innerText=name;
	   document.getElementById("bb").innerText=name;
   }
 </script>
</head>
<body> <!-- 0615/form_ex7.jsp -->
  <!-- 자바스크립트를 이용한 텍스트 내용을 변경하기 -->
  <!-- 이름을 클릭하면 아래에 있는 ???를 이름으로 변경하기 -->
  <span onclick="chg('홍길동')">홍길동</span>
  <span onclick="chg('슈퍼맨')">슈퍼맨</span>
  <span onclick="chg('배트맨')">배트맨</span>
  <hr>
  <div> <span id="aa">???</span>님!! 안녕하세요</div> <p>
  <div> <span id="bb">???</span>님!! 감사합니다</div>
</body>
</html>