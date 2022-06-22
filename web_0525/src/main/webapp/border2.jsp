<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   div {
      width:200px;
      height:40px;
   }
   #aa {
     border-style:solid;
     border-color:red;
     border-width:2px;
   }
   #bb {
     border-top-style:dotted;
     border-top-color:blue;
     border-top-width:1px;
     border-bottom-style:dotted;
     border-bottom-color:blue;
     border-bottom-width:1px;
   }
   #cc {
     border-top:solid pink 2px;
     border-bottom:double red 3px;
   }
 </style>
</head>
<body> <!-- border2.jsp -->
  <!-- 외곽선의 모양은 각각의 방향마다 다르게 하기 -->
  <div id="aa"></div>
  <p>
  <div id="bb"></div>
  <p>
  <div id="cc"></div>
</body>
</html>