<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
     div {
       width:100px;
       height:100px;
       background:red;
     }
     #bb {
       transform:rotate(45deg); 
     }
     #cc {
       transform:rotate(90deg); 
     }
     #dd {
       transform:rotate(170deg); 
     }
  </style>
</head>
<body>  <!-- rotate.jsp -->
  <!-- css에서 동적인 효과를 주는 속성 : rotate, scale, translate , skew-->
  <div id="aa">rotate</div> <p>
  <div id="bb">rotate</div> <p>
  <div id="cc">rotate</div> <p>
  <div id="dd">rotate</div> <p>
</body>
</html>