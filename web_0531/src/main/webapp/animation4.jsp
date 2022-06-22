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
       animation-duration:10s;
       animation-iteration-count:infinite;
       display:flex;
       align-items:center;
       justify-content:center;
        
    }
    
    @keyframes a1 {
       0% {
          transform:translate(0px,0px);
       }
       30% {
          transform:translate(200px,200px);
       }
       70% {
          transform:translate(100px,300px);
       }
       100% {
          tranform:translate(0px,0px);
       } 
    }
    /* 
    @keyframes a1 {  
      from {     
          transform:translate(0px,0px);
      }
      to {
          transform:translate(100px,100px);
      }
    }
    */
  </style>
</head>
<body>  <!-- animation4.jsp -->
  <!-- transform:translate를 animation을 부여 -->
  <div id="aa"> 이동 </div>  
   
</body>
</html>