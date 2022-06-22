<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #aa {
      border-style:solid;   /* 선의 모양 */
      border-color:red;   /* 선의 색 */
      border-width:1px;   /* 선의 굵기 */
      width:200px;   /* 가로 크기 */
      height:40px;   /* 세로 크기 */  
      /* 가로와 세로의 크기는 block형에서만 가능 */
   }
   #bb {
      width:140px;
      height:35px;
      border:1px blue solid ;
   }
 </style>
</head>
<body> <!-- border1.jsp -->
  <!-- 외곽선 관련 태그 -->
  <div id="aa"> 안녕하세요 </div> <p>
  <span id="aa"> 감사합니다 </span>
  <hr>
  <div id="bb"></div>
</body>
</html>