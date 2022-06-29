<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/jh.css">
<title>작성</title>
</head>
<body>

<div id="ff"> QnA </div>
<form action="qna_writeok.jsp" method="post">
<table>
<tr>
	<td> 제목 </td>
	<td> <input type="text" name="title" size="10"> </td>
</tr>
<tr>
	<td> 이름 </td>
	<td> <input type="text" name="name" size="10"> </td>
</tr>
<tr>
	<td> 내용 </td>
	<td> <textarea name="content"> </textarea> </td>
</tr>
<tr>
	<td> 비밀번호 </td>
	<td> <input type="password" name="pwd" size="10"> </td>
</tr>
</table>

<input type="submit" value="질문작성">
</form>
</html>