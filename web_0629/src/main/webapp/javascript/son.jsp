<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function test()
    {
    	alert("자식창 함수");
    }
    function redcolor()
    {
    	// 부모창의 글씨색 빨강
    	opener.document.getElementById("aa").style.color="red";
    }
    function parentfunc()
    {
    	// 부모창의 함수
    	opener.test();
    }
  </script>
</head>
<body> <!-- son.jsp -->
  
   <span id="aa"> 자식 창 </span> <p>
   <hr>
   <!-- 아래를 클릭하면 부모창의 '부모 창'글자 빨강 -->
   <b onclick="redcolor()"> 부모창 글자색 변경 </b>
   
   <hr>
   <!-- 아래를 클릭하면 부모창의 자바스크립트 함수 실행 -->
   <b onclick="parentfunc()"> 부모창 함수 실행 </b>
</body>
</html>








