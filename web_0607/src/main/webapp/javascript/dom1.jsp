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
    	// 자바스크립트에서 태그이름으로 요소를 접근하기
    	document.getElementsByTagName("div")[1].align="center";  // align이라는 태그의 속성
    	document.getElementsByTagName("div")[4].style.color="red"; // 스타일의 속성
    	// 현재문서에서 div태그를 가리킨다
    }
  </script>
</head>
<body> <!-- dom1.jsp -->
  <!-- 태그 요소에 dom을 통하여 접근하기 -->
  <input type="button" onclick="change()" value="함수호출"><p>
  <div> 안녕하세요 </div> <p>
  <div> 안녕하세요 </div> <p>
  <div> 안녕하세요 </div> <p>
  <div> 안녕하세요 </div> <p>
  <div> 안녕하세요 </div> <p>
  <div> 안녕하세요 </div> <p>
</body>
</html>



