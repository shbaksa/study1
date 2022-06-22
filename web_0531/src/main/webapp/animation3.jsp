<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #aa {
       width:100px;
       height:100px;
       border:1px solid red;
       border-radius:100px;
       animation-name:a1;
       animation-duration:4s;
       display:flex;
       align-items:center;
       justify-content:center;
       margin-left:200px;
    }
     
    @keyframes a1 {  
      from {    /* scale(x,y), scaleX(x) , scaleY(y) */
          transform:scale(1,1);
      }
      to {
          transform:scale(0.5,0.5);
      }
    }
  </style>
</head>
<body>  <!-- animation2.jsp -->
  <!-- transform:rotate를 animation을 부여 -->
  <div id="aa"> 회전 </div>  
  <div id="aa"> 회전 </div>  
  <div id="aa"> 회전 </div>  
</body>
</html>