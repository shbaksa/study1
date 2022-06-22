<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    body {
      margin:0px;
    }
    #first {  /* 가로, 세로, 중앙정렬 */
       width:100%;
       height:25px;
       margin:auto;
       background:#5f0080;
       text-align:center;
    }
    #first #left,#first #right {
       color:white;
       display:inline-block;
       height:25px;
    }
    #first #left {
       width:1150px;
    }
    #first #right {
       width:50px;
    }
    #second {
       width:1200px;
       height:25px;
       margin:auto;
       background:white;
    }
    #second #left, #second #right {
       width:595px;
       height:25px;
       display:inline-block;
       font-size:13px;
    }
    #second #left {
    
    }
    #second #left #aa {
       margin-left:10px;
       border:1px solid #cccccc;
       border-radius:10px;
       padding-left:7px;
       padding-right:7px;
    }
    #second #left #aa span {
       color:#5f0080;
    }
    #second #right {
       text-align:right;
    }
    #third {
       width:1200px;
       height:50px;
       margin:auto;
       background:white;
       text-align:center;
    }
    #fourth {
       width:1200px;
       height:35px;
       margin:auto;
       background:white;
    }
    #fourth #menu li {
       list-style-type:none;
       display:inline-block;
       text-align:center;
       width:130px;
       height:35px;
    }
    #fifth {
       width:1900px;
       height:450px;
       margin:auto;
       background:white;
    }
    #sixth {
       width:1200px;
       height:700px;
       margin:auto;
       background:red;
    }
  </style>
</head>
<body>  <!-- index.jsp -->
   <div id="first">
     <div id="left">지금 가입하고 인기상품 100원에 받아가세요! &nbsp;&nbsp;&nbsp; ></div>
     <div id="right">X</div>
   </div>
   <div id="second">
     <div id="left"> <span id="aa"> <span>샛별·택배</span> 배송안내 > </span></div>
     <div id="right"> 회원가입 | 로그인 | 고객센터▼</div>
   </div>
   <div id="third"> <img src="kurly.png"></div>
   <div id="fourth">
     <ul id="menu">
       <li> 전체 카테고리 </li>
       <li> 신상품 </li>
       <li> 베스트 </li>
       <li> 알뜰쇼핑 </li>
       <li> 특가/혜택 </li>
       <li style="width:300px;"> 검색창 </li>
       <li style="width:40px;"> <img src="m1.png"> </li>
       <li style="width:40px;"> <img src="m2.png"> </li>
       <li style="width:40px;"> <img src="m3.png"> </li>
     </ul>
   </div>
   <div id="fifth"><img src="fifth.png" width="1900" height="450"></div>
   <div id="sixth"></div>
</body>
</html>