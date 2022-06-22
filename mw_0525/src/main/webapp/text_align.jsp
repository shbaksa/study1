<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- text.align.jsp -->

	<!-- text.align:정렬하기 -->
	<!-- html태그내의 장렬 -->
	<p align="left"> 안녕하세요! </p>
	<p align="center"> 안녕하세요! </p>
	<p align="right"> 안녕하세요! </p>
	
	<!-- h1~h6 -->
	<h1 align="center"> 하하하 </h1>
	<h2 align="center"> 하하하 </h2>
	<h3 align="center"> 하하하 </h3>
	
	<!-- talbe,tr,td -->
	<table width="400" height="300" border="1" align="center">
		<caption> 학생 정보 </caption> <!-- 표의 제목 -->
		<tr align="center" valign="top">
			<td>이름</td>
			<td>나이</td>
		</tr>
		<tr>
			<td align="center" >홍길동</td> <!-- 좌,우,센터 정렬 -->
			<td valign="bottom">33</td> <!-- 상,하 정렬 -->
		</tr>
	</table>
	
	<!-- div -->
	<div align="center"> 오늘은 수요일 </div>
	
	<!-- li -->
	<li align="center"> 하하하 </li>
	

</body>
</html>