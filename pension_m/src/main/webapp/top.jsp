<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="../etc/pension.css" rel="stylesheet" type="text/css" />
<script src="../etc/pension.js"></script>
<!-- <link href="etc/pension.css" rel="stylesheet" type="text/css" />
<script src="etc/pension.js"></script> -->
</head>
<body>
	<!-- index.jsp -->
	<div id="first">
		펜션 오픈 기념 1박에 100원에 !!! <span id="aa">X</span>
	</div>

	<div id="second">
		<div id="left">Logo</div>
		<div id="right">
			<ul>
				<li id="main" onmouseover="view(0)" onmouseout="hide(0)">팬션소개
					<ul class="sub">
						<li><a href="../sogae/intro.jsp">인사말</a></li>
						<li>객실소개</li>
						<li>오시는길</li>
					</ul>
				</li>
				<li id="main" onmouseover="view(1)" onmouseout="hide(1)">여행정보
					<ul class="sub">
						<li>주문진 항</li>
						<li>장사해수욕장</li>
						<li>설악상</li>
						<li>정동진</li>
					</ul>
				</li>
				<li id="main" onmouseover="view(2)" onmouseout="hide(2)">예약관련
					<ul class="sub">
						<li>예약안내</li>
						<li>예약하기</li>
					</ul>
				</li>
				<li id="main" onmouseover="view(3)" onmouseout="hide(3)">커뮤니티
					<ul class="sub">
						<li>공지사항</li>
						<li>여행후기</li>
						<li>자유게시판</li>
					</ul>
				</li>
				<li>
				로그인 
				<a href="../member/member_input.jsp">회원가입</a>
				</li>
			</ul>
		</div>
	</div>