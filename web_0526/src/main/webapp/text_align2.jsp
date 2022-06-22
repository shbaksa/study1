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
      border:2px solid red;
   }
   #aa { /* 태그를 테이블속성을 부여 */
      display:table-cell;
      text-align:center;
      vertical-align:middle;
   }
   #bb {
      display:flex;
      align-items:center; /* 상하 */
      justify-content:center; /* 좌우 */
   }
   #cc {
      text-align:center;
      height:31px;
      padding-top:9px;
   }
 </style>
</head>
<body> <!-- text_align2.jsp -->
  <!-- 좌우정렬,상하정렬 -->
  <div id="aa"> 스포츠의류 </div> <p>
  <div id="bb"> 가공품 </div> <p>
  <div id="cc"> 장난감 </div>
</body>
</html>