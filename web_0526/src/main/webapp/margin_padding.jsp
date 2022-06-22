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
      height:30px;
      border:1px solid red;
      margin-top:10px;
    }
    #bb {
      margin-top:30px;
    }
    span {
      margin-left:30px;
    }
  </style>
</head>
<body> <!-- margin_padding.jsp -->
  <!-- 
    margin:요소와 요소의 거리
    padding:자기요소의 내용과 외곽선의 거리
   -->
   상하 <p>
   <div id="aa"> 첫번째 </div>
   <div id="bb"> 두번째 </div>
   <div id="cc"> 세번째 </div>
   
   <hr>
   좌우 <p>
   <span> 첫번째 </span>
   <span> 두번째 </span>
   <span> 세번째 </span>
</body>
</html>