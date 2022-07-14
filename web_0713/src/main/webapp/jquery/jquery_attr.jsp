<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
   $(function()
   {
	   // 태그의 속성을 읽어오기
	   var s1=$("input[type=text]").attr("value");
	   alert(s1);
	   // 태그의 속성을 바꾸기
	   $("#aa").attr("type","radio");
	   
	   $("a").attr("href","http://www.naver.com");
   });
 </script>
</head>
<body> <!-- jquery_attr.jsp -->
  <input type="text" value="이름"> <p>
  <input type="checkbox" id="aa">
  <a href=""> 클릭 </a>
</body>
</html>




