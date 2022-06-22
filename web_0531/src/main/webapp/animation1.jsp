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
       background:red;   
       animation-name:a1;   /* 사용할 애니메이션의 이름 */
       animation-duration:4s;   /* 애니메이션을 실행할 시간 */
       animation-iteration-count:infinite;  /* 애니메이션을 동작할 횟수 => 숫자, infinite */
    }
    @keyframes a1 {  /* 동작의 변화를 부여 => from ~ to  , % */
       from {
          background:red;
          width:100px;
          height:100px;
       }
       to {
          background:blue;
          width:50px;
          height:50px;
       }
    }
    @keyframes a2 {  /* 동작의 변화를 부여 => from ~ to  , % */
       from {
          background:red;
       }
       to {
          background:yellow;
       }
    }
    @keyframes a3 {
       from {
         width:100px;
       }
       to {
         width:200px;
       }
    }
    #bb {
       width:100px;
       height:100px;
       background:yellow;
       animation-name:a3;
       animation-duration:5s;
       animation-iteration-count:3;
       animation-delay:3s;
       animation-fill-mode:forwards;  /* none, forwards, backwards, both */
    }
  </style>
</head>
<body>  <!-- animation1.jsp -->
  <div id="aa"></div> <p>
  <span id="aa"> 안녕하세요 </span> <p>
  <div id="bb"></div>
  
</body>
</html>





