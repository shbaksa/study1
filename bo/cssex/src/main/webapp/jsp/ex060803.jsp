<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>야구 선수 등록폼 </title>

<script>
	function check()
	{		
		if(document.pkc.name.value != "" &&
			document.pkc.position.value != "" &&
			document.pkc.num.value != "")
			{
				return true;
			}
		else if(document.pkc.name.value.trim() == "" &&
				document.pkc.position.value.trim() == ""&&
				document.pkc.position.value.trim() == "")
		{
			alert("입력되지 않은 항목이 있습니다.");
			return false;
		}
		else  
		{
			alert("입력되지 않은 항목이 있습니다.");
			document.pkc.name.focus();
			return false;
		}
	}
</script>

<style>
body{background : lightblue;
margin:0;
color : navy;
text-align : center;}
</style>

</head>
<body>

<form name="pkc" method="post" action="ex060802.jsp" onsubmit="return check()">

<b>선수명</b> <input type="text" name="name"> <p>
<b>포지션</b> <input type="text" name="position"> <p>
<b>등번호</b> <input type="text" name="num"><p>

<input type="submit" value="등록하기" >

</form>





</body>
</html>