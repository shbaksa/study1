<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   div {
     width:80px;
     height:60px;
     border:1px solid red;
     margin-top:60px;
   }
   #bb {
     overflow:auto;
   }
   #cc {
     overflow:scroll;
   }
   #dd {
     overflow:hidden;
   }
   #ee {
     overflow-y:scroll;
     overflow-x:hidden;
   }
 </style>
</head>
<body> <!-- overflow.jsp -->
  <!-- overflow:값; 특정영역에 내부의 내용이 넘칠경우 -->
  <div id="aa">동해물과 백두산이 마르고 닳도록 하느님이 보우하사</div><p>
  <div id="bb">동해물과 백두산이 마르고 닳도록 하느님이 보우하사</div><p>
  <div id="cc">동해물과 백두산이 마르고 닳도록 하느님이 보우하사</div><p>
  <div id="dd">동해물과 백두산이 마르고 닳도록 하느님이 보우하사</div><p>
  <div id="ee">동해물과 백두산이 마르고 닳도록 하느님이 보우하사</div><p>
</body>
</html>