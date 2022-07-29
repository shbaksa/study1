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
		펜션 오픈 기념 1박에 100원에 !!! <a id="aa">X</a>
	</div>

	<div id="second">
		<div id="left"><a href="../main/index.jsp">Logo</a></div>
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
						<li><a href="../reserve/reserve.jsp">예약하기</a></li>
						<li><a href="../reserve/reserve_view.jsp?ck=1">예약현황</a></li>
					</ul>
				</li>
				<li id="main" onmouseover="view(3)" onmouseout="hide(3)">커뮤니티
					<ul class="sub">
						<li><a href="../gongji/list.jsp">공지사항</a></li>
						<li><a href="../tour/list.jsp">여행후기</a></li>
						<li><a href="../board/list.jsp">자유게시판</a></li>
					</ul>
				</li>
				<li>
					<!-- 로그인을 하지 않은 경우 --> <c:if test="${userid==null}">
						<a href="../member/login.jsp">로그인</a>
						<a href="../member/member_input.jsp">회원가입</a>
					</c:if> <!-- 로그인을 한 경우 --> <c:if test="${userid!=null}">
				${name}님&nbsp;
				<a href="../member/logout.jsp">로그아웃</a>&nbsp;
				<c:if test="${userid != 'admin'}">
				<a href="../member/info.jsp">회원정보</a>&nbsp;		
				<a href="../reserve/reserve_view.jsp?ck=1">예약현황</a>						
				</c:if>
				<c:if test="${userid == 'admin'}">
				<div id="admin" onmouseover="admin_view()" onmouseout="admin_hide()"> 관리자 메뉴
					<ul id="sub">
						<li><a href="../admin/room_view.jsp">객실관리</a></li>
						<li><a href="../admin/reserve_check.jsp">예약관리</a></li>
						<li><a href="../admin/member_check.jsp">회원관리</a></li>
					</ul>
				</div>
				</c:if>			
				</c:if>
				</li>
			</ul>
		</div>
		<script>
			/* function admin_view(){				
				document.querySelector("#second #admin #sub").style.visibility="visible";
				// css의 선택자를 사용할 수 있다. querySelectorAll()
			}
			function admin_hide(){
				document.querySelector("#second #admin #sub").style.visibility="hidden";
			} */
			
			$(function(){
				
				$("#admin").mouseover(function(){
					$("#sub").css("visibility","visible");
				});
				$("#admin").mouseout(function(){
					$("#sub").css("visibility","hidden");
				});
				
			});
		</script>
		<style>
		#second #admin{
			display:inline-block;
			position: relative;
		}
		#second #admin #sub{
			position: absolute;
			padding-left:0px;
			background:#fff;
			padding:8px;
			visibility: hidden;
		}
		#second #admin #sub li{
			list-style-type: none;
			height:25px;
		}
		
		</style>
		
	</div>