<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ex01.css">
<title>Insert title here</title>
</head>
<%
	String temp="";

if(session.getAttribute("userid") != null)
{
	temp = session.getAttribute("userid").toString()+" 님";
}
else
{
 	temp = "";
}

String temp_chk ="";

if(temp == "")
{
	temp_chk = "0";
}
else
{
	temp_chk = "1";
}


%>

<script>
	function login(n)
	{
		
		if(n == 0)
		{
			document.getElementById("login").action="mainlogin.jsp";	
			document.getElementById("btn").value="로그인";
			document.getElementById("join").style.visibility = "visible";
		}		
		
		else 
		{
			document.getElementById("login").action="logout.jsp";
			document.getElementById("btn").value="로그아웃";			
		}	
	}
		function category(n)
		{
			if(n==1)
				{
						document.getElementById("a2").style.visibility = "visible";
				}
			else if(n==2)
				{
						document.getElementById("a2").style.visibility ="hidden";
				}

		}
		
	
</script>

<body onload="login(<%= temp_chk%>)">
<div id="m1">Java RESORT</div>
<span id="a1" onmouseover="category(1)" onmouseout="category(2)"> category 
		<form id="login" action ="" >
 				<%= temp %> <a id="join" href="join.jsp"> 회원가입 </a>	<input type="submit" id="btn" value="" > 									
		</form>
</span>

<div id="a2"  onmouseover="category(3)">
<ul id="a3">
	<li><a href="intro.jsp">소개</a></li>
	<li><a href="room.jsp">객실</a></li>
	<li><a href="reserve.jsp">객실</a></li>
	<li><a href="service.jsp">서비스</a></li>
	<li><a href="map.jsp">오시는길</a></li>
	<li><a href="review.jsp">리뷰</a></li>
	<li><a href="reserve_confirm.jsp">예약확인</a></li>
	<li><a href="qna.jsp">문의사항</a></li>
</ul>
</div>


</body>
</html>