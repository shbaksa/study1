<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   /* 태그명 {속성명:속성값;속성명:속성값;} */
   /*
   b {
     color:red;
   }
   i {
     color:blue;
   } */
   
   #aa {
     color:red;
   }
   #bb {
     color:blue;
   }
   .aa {
     font-size:20px;
   }
   .bb {
     font-size:30px;
   }
 </style>
</head>
<body>
   <!-- 
       css : 태그에 새로운 속성들을 추가하는 기능 => 태그의 기능 + css기능
       1. style태그내에
       2. 외부파일로
       3. 태그내부에
    -->
    <b id="aa"> 안녕 </b> 하세요 <P>
    <i class="aa"> 호호 </i> <p>
    <b id="bb"> 하하하 </b>
    <i class="bb"> 오늘은 수요일 </i>
</body>
</html>