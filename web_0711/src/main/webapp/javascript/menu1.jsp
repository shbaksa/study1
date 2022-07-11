<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #main { /* 내부에 있는 레이어의 기준을 현재 태그에 적용시키려면 현재태그에 position속성을 부여해야 한다 */
     width:100px;
     height:40px;
     margin:auto;
     position:relative;
      
   }
   #sub { /* 부메뉴는 레이어로 만들고 좌표의기준은 브라우저좌측상단 X,  주메뉴를 기준 */
     position:absolute;
     left:0px;
     top:30px;
     visibility:hidden;
 
   }
 </style>   
 <script>
  function view() // 부메뉴를 보이게
  {
	  document.getElementById("sub").style.visibility="visible";
  }
  function hide()
  {
	  document.getElementById("sub").style.visibility="hidden";
  }
 </script>
</head>
<body> <!-- menu1.jsp -->
   <div id="main" onmouseover="view()" onmouseout="hide()"> 주메뉴 
    <div id="sub" onmouseover="view()" onmouseout="hide()">
     부메뉴 <br>
     부메뉴 <br>
     부메뉴 <br>
    </div>
   </div>
   
   
</body>
</html>