<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
 <style>
  body {
    margin:0px;
  }
  a {
    text-decoration:none;
    color:black;
  }
  a:hover {
    text-decoration:underline;
  }
  #first {
    width:1100px;
    height:33px;
    margin:auto;
    background:purple;
    text-align:center;
    color:white;
    padding-top:7px;
  }
  #second {
    width:1100px;
    height:60px;
    margin:auto;
/*     background:yellow; */
  }
  #second > #left {
    width:200px;
    height:60px;
  }
  #second > #right {
    width:890px;
    height:60px;
 
  }
  #second>#left , #second>#right {
    display:inline-block;
  }
  #second > #right > ul > li {
    list-style-type:none;
    display:inline-block;
    width:140px;
    font-size:15px;
  }
  #second > #right > ul > li:last-child {  /* 마지막 li태그의 길이는 크게 */
    width:250px;
  }
  #second #right #main {  /* 주메뉴 */
     position:relative;
    
  }
  #second #right #main .sub {  /* 부메뉴 ul태그 */
     position:absolute;   /* 부메뉴의 기준점이 주메뉴로 된다 */
     visibility:hidden;
     background:white;
     padding:8px;
     border:1px solid #dddddd;
     left:-10px;
     padding-bottom:3px;
  }
  
  #second #right #main .sub li {
     list-style-type:none;
     height:28px;
  }
  #third {
    width:1100px;
    height:400px;
    margin:auto;
/*     background:#cccccc; */
  }
  #fourth {
    width:1100px;
    height:130px;
    margin:auto;
/*     background:green; */
  }
  #fourth > div {
    width:350px;
    height:130px;
    /* border:1px solid red; */
    display:inline-block;
  }
  #fifth {
    width:1100px;
    height:150px;
    margin:auto;
/*     background:pink; */
  }
  #fifth > div {
    width:210px;
    height:150px;
    border:1px solid red;
    display:inline-block;
  }
  #sixth {
    width:1100px;
    height:100px;
    margin:auto;
    background:purple; 
    color:white;
  }
 </style>
 <script src="../etc/pension.js"></script>
 <script>
  function view(n)
  {
	  document.getElementsByClassName("sub")[n].style.visibility="visible";
  }
  function hide(n)
  {
	  document.getElementsByClassName("sub")[n].style.visibility="hidden";
  }
 </script>
</head>
<body> <!-- index.jsp -->
  <div id="first"> 펜션 오픈 기념 1박에 100원에 !!!  <span id="aa">X</span></div>
  <div id="second">
    <div id="left"> <a href="../main/index.jsp"> CHANNY </a></div>
    <div id="right">
      <ul>
        <li id="main" onmouseover="view(0)" onmouseout="hide(0)"> 펜션소개 
           <ul class="sub">
             <li> <a href="../sogae/intro.jsp"> 인사말 </a> </li>
             <li> 객실소개 </li>
             <li> 오시는길 </li>
           </ul>
        </li>
        <li id="main" onmouseover="view(1)" onmouseout="hide(1)"> 여행정보 
           <ul class="sub">
             <li> 주문진 항 </li>
             <li> 장사해수욕장 </li>
             <li> 설악산 </li>
             <li> 정동진 </li>
           </ul>
        </li>
        <li id="main" onmouseover="view(2)" onmouseout="hide(2)"> 예약관련 
           <ul class="sub">
             <li> 예약안내 </li>
             <li> <a href="../reserve/reserve.jsp"> 예약하기 </a> </li>
           </ul>
        </li>
        <li id="main" onmouseover="view(3)" onmouseout="hide(3)"> 커뮤니티 
           <ul class="sub">
             <li> <a href="../gongji/list.jsp"> 공지사항 </a></li>
             <li> <a href="../tour/list.jsp"> 여행후기 </a></li>
             <li> <a href="../board/list.jsp"> 자유게시판 </a></li>
           </ul>
        </li>
        <li>
        <c:if test="${userid == null}">
         <!-- 로그인을 하지 않은 경우 -->
          <a href="../member/login.jsp"> 로그인 </a>
          <a href="../member/member_input.jsp"> 회원가입 </a>
        </c:if>
        
        <c:if test="${userid != null}"> 
         <!-- 로그인을 한 경우 -->
          ${name}님 
          <a href="../member/logout.jsp"> 로그아웃 </a>
          <a href="../member/member_info.jsp"> 회원정보 </a> 
          <a href="../reserve/reserve_view.jsp?ck=1"> 예약현황 </a>
        </c:if>
        </li>
      </ul>
    </div>
  </div>
  
  
  
  
  
  