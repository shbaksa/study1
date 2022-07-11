<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #menu {
     width:800px;
     margin:auto;
     text-align:center;
   }
   #main { /* 내부에 있는 레이어의 기준을 현재 태그에 적용시키려면 현재태그에 position속성을 부여해야 한다 */
     width:140px;
     height:30px;
     margin:auto;
     position:relative;
     display:inline-block;
     border:1px solid red;
     padding-top:7px;
   }
   .sub {
     border:1px solid blue;
     width:140px;
     position:absolute;
     top:38px;
     left:-1px;
     visibility:hidden;
   }
 </style>   
 <script>
  function view(n) // 부메뉴를 보이게
  {
	  document.getElementsByClassName("sub")[n].style.visibility="visible";
  }
  function hide(n)
  {
	  document.getElementsByClassName("sub")[n].style.visibility="hidden";
  }
 </script>
 
</head>
<body> <!-- menu2.jsp -->
 <div id="menu">
   <div id="main" onmouseover="view(0)" onmouseout="hide(0)"> 주메뉴1 
     <div class="sub">
      부메뉴 <br>
      부메뉴 <br>
      부메뉴 <br>
     </div>
   </div>
   <div id="main" onmouseover="view(1)" onmouseout="hide(1)"> 주메뉴2 
     <div class="sub">
      부메뉴 <br>
      부메뉴 <br>
      부메뉴 <br>
     </div>
   </div>
   <div id="main" onmouseover="view(2)" onmouseout="hide(2)"> 주메뉴3 
     <div class="sub">
      부메뉴 <br>
      부메뉴 <br>
      부메뉴 <br>
     </div>
   </div>
  </div> 
   
</body>
</html>