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
    	// 태그를 클릭하여 함수를 호출하였을때 => body내의 요소를 변경하는 작업
    	// 클릭하는 태그와 요소를 변경할 태그가 동일한다면 this를 이용한다.
    	// 클릭요소와 작업요소가 틀리면 this X
    	document.getElementById("aa").style.color="red";
    	
    }
    function check2(my)  // my라는 매개변수는 클릭된 태그의 객체를 전달받는다
    { 
    	// dom으로 접근
    	//document.getElementById("bb").style.color="blue";
    	// 클릭요소와 작업요소가 같다면 this로 간단히 연결
    	my.style.color="blue";
    }
  </script>
</head>
<body> <!-- this1.jsp -->
  <!-- this는 자바스크립트를 호출할때 자기 자신의 객체(태그)를 전달하는 방법 -->
  <div onclick="check()"> 안녕하세요 </div> <p>
  <span id="aa"> 하하하 </span>
  <hr> <!-- 감사합니다라는 글자를 클릭하면 감사합니다 글자를 파란색 -->
  <div onclick="check2(this)" id="bb"> 감사합니다 </div>
</body>
</html>



