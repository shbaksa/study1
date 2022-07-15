<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
		body{
			margin:0px;
		}
		#first{
			width:1100px;
			height:33px;
			margin:auto;
			text-align:center;
			color:white;
			padding-top:7px;
			background:purple;
		}
		#second{
			width:1100px;
			height:60px;
			margin:auto;
			/* background:yellow; */
		
		}
		#second > #left{
			width:200px;
			height:60px;
		}
		#second > #right{
			width:890px;
			height:60px;
		}
		#second > #left , #second > #right{
			display:inline-block;
		}
		#second > #right > #main > li{
			list-style-type:none;
			display:inline-block;
			width:140px;			
			/* background:red; */
		}		
		#third{
			width:1100px;
			height:400px;
			margin:auto;
			/* background:#cccccc;	 */
		}
		#fourth{
			width:1100px;
			height:130px;
			margin:auto;
			/* background:green; */
		}
		#fourth > div {
			width:350px;
			height:130px;			
			border:1px solid red;
			display:inline-block;
		}	
	
		#fifth{
			width:1100px;
			height:150px;
			margin:auto;
			/* background:pink; */
		}
		#fifth > div{
			width:210px;
			height:150px;
			border:1px solid red;
			display:inline-block;
		}
		#sixth{
			width:1100px;
			height:100px;
			margin:auto;
			background:#cccccc;
		}
	
	
	</style>
</head>
<body>	<!-- index.jsp -->

	<div id="first"> 펜션 오픈 기념 1박에 100원에 !!! <span id="aa">X</span></div>

	<div id="second">
		<div id="left">Logo</div>
		<div id="right">
			<ul id="main">
				<li> 팬션소개 </li>
				<li> 여행정보 </li>
				<li> 예약관련 </li>
				<li> 커뮤니티 </li>
				<li>
					로그인
					회원가입
				</li>
			</ul>	
		</div>	
	</div>
	
	
	<div id="third"> <img src="img/main.jfif" width="1100" height="400"></div>
	
	
	<div id="fourth">
		<div id="gongji"> 공지사항 </div>
		<div id="tour"> 여행후기 </div>
		<div id="board"> 게시판 </div>
	
	</div>
	
	
	<div id="fifth">
		<div id="e1">이벤트 1</div>
		<div id="e2">이벤트 2</div>
		<div id="e3">이벤트 3</div>
		<div id="e4">이벤트 4</div>
		<div id="e5">이벤트 5</div>
	</div>
	
	
	<div id="sixth">
		<table width="1000" align="center">
		<tr>
		<td width="100">팬션홈페이지</td>
		<td width="350">팬셔홈페이지</td>
		<td width="140"></td>
		<td width="400"></td>
		</tr>
		<tr>
		<td>팬션</td>
		<td>팬션</td>
		<td>이메일</td>
		<td>@@@@@@@@@</td>
		</tr>
		<tr>
		<td>전화번호</td>
		<td>00000000</td>
		<td>사업자</td>
		<td>000000000</td>
		</tr>
		<tr>
		<td>주소</td>
		<td>ㅇㅇㅇㅇㅇㅇㅇㅇ</td>
		<td></td>
		<td></td>
		</tr>
		</table>
	
	</div>
	
	

</body>
</html>