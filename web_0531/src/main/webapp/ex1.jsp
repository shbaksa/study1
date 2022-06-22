<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #aa > b {  /* id가 aa인 요소 내의 자식중에 b태그 */
      color:red;
    }
    #cc b {    /* id가 cc인 요소 내의 모든 후손중에 b태그 */
      color:red;
    }
    #ee {
      text-decoration:underline;
    }
  </style>
</head>
<body>  <!-- ex1.jsp -->
  <!-- 자손 후손 선택자 -->
  <div id="aa">                       <!--  1대  -->
    <b> 첫번째(자손) </b>               <!-- 2대 -->
    <div id="bb">                     <!-- 2대 -->
       <b id="ee"> 즐거운 오늘입니다 </b> <p>     <!-- 3대 -->
       <span>                         <!-- 3대 -->
         <b> 오늘은 화요일 </b>          <!-- 4대 -->
       </span>
    </div>
  </div>
  <hr>
  <div id="cc">
    <b> 두번째(후손) </b>
    <div id="dd">
       <b> 즐거운 오늘입니다 </b> <p>
       <span> 
         <b> 오늘은 화요일 </b>
       </span>
    </div>
  </div>
</body>
</html>