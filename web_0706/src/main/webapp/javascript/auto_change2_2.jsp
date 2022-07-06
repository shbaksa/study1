<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   var img=["bg1.jpg","bg2.jpg","bg3.jpg","bg4.jpg"];
   var chk=0;
   function auto_change()
   {
	   
	   setInterval(function()
	   {
		   if(chk>=img.length)
			   chk=0;
		   
		   document.getElementById("pkc").src=img[chk];
		   chk++;
	   },2000);
	   
   }
 
 </script>
</head>
<body onload="auto_change()"> <!-- auto_change2.jsp => 이미지 자동 변경 -->
  <img src="" width="100" id="pkc">
</body>
</html>