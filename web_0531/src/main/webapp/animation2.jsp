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
    #aa:nth-child(2) {   /* id='aa'인 요소의 2번째 요소 */
       transform-origin:left;
    }
    #aa:last-child {     /* id='aa'인 요소의 마지막 요소 <-> first-child */
       transform-origin:right;
    }
    @keyframes a1 {
      from {
          transform:rotate(0deg);
      }
      to {
          transform:rotate(360deg);
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