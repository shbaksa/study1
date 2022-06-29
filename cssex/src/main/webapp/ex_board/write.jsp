<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 글 작성</title>
</head>
<body>

<form method= "post" action = " wrtie_ok.jsp ">

<table width = "800"  border ="2"  style="text-aling:center" >

<tr>

	<td>작성자 </td>
	<td> <input type="text" name="name" size ="30"> </td>
	
</tr>
<tr>

	<td> 제목 </td>
	<td> <input type="text" name="title" size ="30"> </td>
	
</tr>


<tr>

	<td> 암호 </td>
	<td> <input type="password" name="pw" size ="30"> </td>
	
</tr>
<tr>

	<td> 내용 </td>
	<td><textarea cols="100" rows="10" name="content"></textarea></td>
	
</tr>

  
</table>
<p>
	<input type="submit" value="작성하기">

</form>


</body>
</html>