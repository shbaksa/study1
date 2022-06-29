<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function winopen()
    {
    	// ("새로운창에보여줄문서","타겟이름","창의 옵션")
    	s1=open("son.jsp","aa","width=300,height=200");
    	//s2=open("son2.jsp","aa","width=300,height=200"); 
    }
    function bluecolor()
    {  // 자식창의 글을 파랑
    	s1.document.getElementById("aa").style.color="blue";
    }
    
    function sonfunc()
    {  // 자식창에 존재하는 함수를 호출
    	s1.test();
    }
    
    function test()
    {
    	alert("부모창");
    }
  </script>
</head>
<body> <!-- parent.jsp -->
  <span id="aa"> 부모 창 </span> <P>
  <b onclick="winopen()"> 창 열기 </b> 
  <hr>
  <!-- 아래를 클릭하면 자식창의 '자식 창'글자의 색을 파랑 -->
  <b onclick="bluecolor()"> 자식창 글자색 변경 </b>
  
  <hr>
  <!-- 아래를 클릭하면 자식창의 자바스크립트 함수 실행 -->
  <b onclick="sonfunc()"> 자식창 함수 실행 </b>
</body>
</html>













