<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/ex01.css">
<script>

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
<title>Welcome</title>
</head>
<body>
<div id="m1">Java RESORT</div>
<div id="a1" onmouseover="category(1)" onmouseout="category(2)"> category </div>
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