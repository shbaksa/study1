<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   var news=["오늘은 매우 더운 날씨입니다","내일은 비도 올수도 있고 더운날씨","모레는 더운날씨도 있고 비도 오고","글피는 날씨가 흐리고 비가 안오길"]
   var chk=0;
   function auto_change()
   {
	   setInterval(function()
	   {
		   // 배열의 인덱스가 마지막 다음이라면 => 처음으로 변경
		   if(chk >= news.length)
			   chk=0;
		   
		   document.getElementById("pkc").innerText=news[chk];
		   chk++;
	   },1000);
	   
   }
    
 </script>
</head> <!-- auto_change1_1.jsp -->
<body onload="auto_change()"> <!-- auto_change1.jsp  => 글자내용이 1초 자동으로 변하기 -->
   <!-- text내용을 자동으로 바꾸기 -->
   <input type="button" onclick="auto_change()" value="클릭">
   <div id="pkc"></div>
</body>
</html>




