<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   .s1 {
     color:red;
   }
 </style>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {   // hasClass() => 클래스의 속성을 가지고 있느냐
	  // id="aa" 인 요소를 클릭하면 스타일 속성의 s1클래스의 속성을 부여
	  $("#aa").click(function()
	  {
		  $("#aa").addClass("s1");
	  });
  
      // id="btn"인 버튼이 클릭되면  id="aa"인 요소의 클래스의 적용여부를 hasClass()통해 확인
      $("#btn").click(function()
      {
    	  alert($("#aa").hasClass("s1"));
    	  alert($(".s1").hasClass("s1"));
      });
  });
 </script>
</head>
<body> <!-- hasclass.jsp -->
   <input type="button" id="btn" value="확인">
   <hr>
   <div id="aa">안녕하세요</div> <p>
   <div class="s1"> 감사합니다. </div>
</body>
</html>





