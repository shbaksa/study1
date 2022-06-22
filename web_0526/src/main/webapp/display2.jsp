<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   span {
     width:160px;
     height:40px;
     border:1px solid red;
   }
   #aa {
      display:block;
   }
   #bb {
      display:inline-block;
      /* inline속성에 block의 속성이 추가 */
   }
 </style>
</head>
<body> <!-- display2.jsp -->
  <!-- display => block, inline , inline-block -->
  <span id="aa">하하하</span><span id="aa">하하하</span>
  <span id="aa">하하하</span><span id="aa">하하하</span>
  <hr>
  <span id="bb">하하하</span><span id="bb">하하하</span>
  <span id="bb">하하하</span><span id="bb">하하하</span>
</body>
</html>