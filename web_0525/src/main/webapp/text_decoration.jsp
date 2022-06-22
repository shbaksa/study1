<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   div {
     text-decoration:overline; /* 윗줄 */
   }
   #aa {
     text-decoration:underline; /* 밑줄 */
   }
   #bb {
     text-decoration:line-through; /* 가운데줄 */
   }
   #cc {
     text-decoration:none;  /* 줄없음 */
   }
 </style>
</head>
<body> <!-- text_decoration.jsp -->
   <!-- text-decoration:밑줄,윗줄,가운데줄,줄없음 -->
   <div> 안녕하세요 </div> <p>
   <span id="aa"> 감사합니다 </span> <p>
   <span id="bb"> 호호호 </span> <p>
   <span id="cc"> 나야나 </span> <p>
   <a href="http://kurly.com"> 컬리 </a> <p>
   <u> 수요일입니다 </u> <p>
   <s> 할인가격 </s>
</body>
</html>