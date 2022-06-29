<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body
{
	margin: 0px;
}

#fst #right
{
	width: 50%;
	height: 5%;
	text-align:center;
	color: white;
	display:inline-block;
	padding: 10px;
}

#fst #left
{
	width: 5%;
	height: 5%;
	text-align:center;
	color: white;
	display:inline-block;
}

#fst
{ 
  background:purple;	
  width: 100%;
  height: 40px;
  text-align:center;
  margin:auto;
  font-color: white;
}

#sec #left 
{
	width:390px;
	heigth:35px;
	text-align:left;
	color:white;
	display:inline-block;
	padding-top:5px;
	margin-left:10px;

}
#sec #left #aa
 {
 	border-radius:20px;
 	border: 1px solid gray;
 }

#sec #left #aa span
{
	color: blue;
}

#sec #right
{
	width:390px;
	heigth:35px;	
	text-align:right;
	color:white;
	display:inline-block;
	padding-top:10px;
	color: black;
	
}

#sec
{
	width:800px;
	height:40px;
	margin:auto;
	background:lightblue;
}
#trd
{
	width:800px;
	height:53px;
	margin:auto;
	text-align:center;
	background:pink;
	
	
}



#fourth #menu li
{
	border: 0.5px dotted gray ;
	border-radius: 5px;
	list-style-type:none;
	display:inline-block;
	text-align:center;
	width: 120px;
	font-size: 15px;
	padding-top:1px;
}

#fourth
{
	width:1800px;
	height:50px;
	margin-left: 300px;
	text-align:auto;
	background:white;
	
}
#fifth
{
	width:100%;
	height:20%;
	margin:auto;
	text-align:auto;
	background:ivory;
	border:0.5px dotted;
	
}
#sixth
{
	width:100%;
	height:20px;
	margin:auto;
	text-align:auto;
	background:lightgray;
	
}
</style>
</head>
<body>

<div id="fst">
	
	<div id="right"> 지금가입하고 신청하세요!!!!!	</div>
	<div id="left"> ▷	</div>
</div>

<div id="sec">
	<div id="left"><span id="aa"><span>샛별 * 택배</span> 배송안내 > </span></div>
	<div id="right">회원가입 	로그인 	고객센터</div>
</div>

<div id="trd">
	<img src="img/kurly.png">
</div>
		


<div id="fourth">
		<ul id="menu">
			<li>  三 </li> 
			<li> 전체 카테고리 </li>
			<li> 신상품 </li>
			<li> 베스트 </li>
			<li> 알뜰쇼핑 </li>
			<li> 특가/혜택</li>
			<li style="width:300px"> 검색 </li>
			<li style="width:40px"> <img src="img/m1.png"> </li>
			<li style="width:40px"> <img src="img/m2.png"> </li>
			<li style="width:40px"> <img src="img/m3.png"> </li>
		</ul>
</div>

<div id="fifth">

<img src="img/fifth.png" width=100% height=20%>

</div>


<div id="sixth">

<table>
	
		<tr colspan="4"> 이상품어때요?
		<td> 이미지 1</td>
		<td> 이미지 2</td>
		<td> 이미지 3</td>
		<td> 이미지 4</td>
		</tr>
	
</table>
</div>





</body>
</html>