<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left: 50px;
	padding-right: 50px;
	font-size: 14px;
	font-family: "Malgun Gothic","맑은 고딕",helvetica,"Apple SD Gothic Neo",sans-serif;
	marigin : 0;
	background-color: white;
}
table
{
	width:100%;
	border-collapse: seperate;
	border-spacing: 0 8px;
}

#a2	
{
	width:100%;
	border: hidden;
	border-top: 1px solid lightgray;
	border-bottom: 1px solid lightgray;
	border-collapse: seperate;
	background : white;
	text-align:center;
	color:gray;
	}

#a1 
	{
		text-align:center;
		padding-bottom:5px;
		color:gray;
}
	#a1 td
	{
		padding-top : 9px;
		border-top : 1px solid lightgray;
		border-bottom : 1px solid lightgray;
		padding-bottom:8px;
	}
#ff{

	border-radius:5px;
	border : hidden;
	background: linear-gradient(to left,white, #5882FA);
	font-size : 35px;
	color : white;
	text-align : left;	
	padding-top: 3px;
	padding-bottom: 5px;
	padding-left: 10px;
}

#b1	
{
	justify-content: center;
	margin-left: 200px;
	width: 600px;
	border-collapse: collapse;
	border-radius: 20px;
}
	#b1 td
	{
		padding : 5px;
	}
	

#c1{
	border-radius : 10px;
	border : 2px solid black;
	border-bottom : hidden;
	background: #2E2E2E;
	font-size : 40px;
	color : white;
	text-align : center;	
}

input[type=submit]
{
	width:100px;
	height:30px;
	background:white;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}
input[type=submit]:hover
{
	width:100px;
	height:30px;
	color:white;
	background:#81BEF7;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}

input[type=button]
{
	width:100px;
	height:30px;
	background:white;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}
input[type=button]:hover
{
	width:100px;
	height:30px;
	color:white;
	background:#81BEF7;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}
form 
{
	display:inline;
}

#aa
{
	visibility : hidden;
}
#a7
{
	visibility : hidden;
	border-top:hidden;
}
#a8
{
	visibility : hidden;
}
#a9
{
	visibility : hidden;
}
#a10
{
	visibility : hidden;
}
#search
{
	width:20px;
	height:17px;
	border:hidden;
	background-image:url("img/search.jpg");
}
#ccc
{
	margin-left:65%;
	width:200px;
	height:20px;
	border: 1px solid gray;
	border-radius:8px;
}
#ccb
{

	width:80px;
	height:15px;
	border:hidden;
}
#cca
{

	width:100px;
	height:14px;
	border:hidden;
}


</style>

<meta charset="UTF-8">
<title>작성하기</title>
</head>

<%
	
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	String nopw = request.getParameter("nopw");
		
%>

<script>
		function pwck()
		{
			 <% 
				 if(nopw.equals("1")){ 
			 %>
				alert("입력안된 항목이 있습니다.");
				<%}
				%>	
		}
</script>

<body onload="pwck()">
<div id="ff"> 글작성 </div>

<form method="post" action="write_ok.jsp" >
<table id="a2" > 
<tr> 
	<td style="background:#A9D0F5"> 작성자</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <input type="text" name="name" size="30" style="border-radius:5px;"></td>
</tr>
<tr> 
	<td style="background:#A9D0F5"> 제  목</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <input type="text" name="title" size="30" style="border-radius:5px;"></td>
</tr>
<tr> 
	<td  style="background:#A9D0F5"> 내  용</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <textarea cols="100" rows="10" name="content" style="border-radius:5px;"></textarea></td>
</tr>
<tr> 
	<td style="background:#A9D0F5"> 암  호</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <input type="password" name="pw" size="10" style="border-radius:5px;"></td>
</tr>
<tr>
	<td style="background:#A9D0F5"> 지역</td>
	<td> <input type="radio" name="area" value="1"> 경기</td>
	<td> <input type="radio" name="area" value="2"> 서울</td>
	<td> <input type="radio" name="area" value="3"> 강원</td>
	<td> <input type="radio" name="area" value="4"> 경상</td>
	<td> <input type="radio" name="area" value="5"> 전라</td>
	<td> <input type="radio" name="area" value="6"> 충청</td>
	<td> <input type="radio" name="area" value="7"> 제주</td>
</tr>

<tr> 
	<td style="background:white">  <input type="checkbox" name="secret" value="0"> </td>
	<td colspan="7" style="color:red"> 체크하시면 비밀글로 작성됩니다.</td>
</tr>
</table>
<p>
<input type="submit" value="뒤로가기" formaction="list.jsp">
<input type="submit" value="작성완료">
</form>

</body>
</html>