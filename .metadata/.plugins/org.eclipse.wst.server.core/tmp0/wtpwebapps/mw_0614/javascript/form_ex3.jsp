<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function cal(n) {
	
		var kor = parseInt(document.pkc.kor[n].value);
		var eng = parseInt(document.pkc.eng[n].value);
		var mat = parseInt(document.pkc.mat[n].value);
		var sci = parseInt(document.pkc.sci[n].value);
		var tot=kor+eng+mat+sci;
		
		document.pkc.result[n].value=tot;
		
		
		
		/* 
		// 홍길동
		parseInt(document.pkc.kor[0].value);
		parseInt(document.pkc.eng[0].value);
		parseInt(document.pkc.mat[0].value);
		parseInt(document.pkc.sci[0].value);
		// 슈퍼맨
		parseInt(document.pkc.kor[1].value);
		parseInt(document.pkc.eng[1].value);
		parseInt(document.pkc.mat[1].value);
		parseInt(document.pkc.sci[1].value);
		// 배트맨
		parseInt(document.pkc.kor[2].value);
		parseInt(document.pkc.eng[2].value);
		parseInt(document.pkc.mat[2].value);
		parseInt(document.pkc.sci[2].value); 
		
		document.pkc.result[0].value=tot;
		document.pkc.result[1].value=tot;
		document.pkc.result[2].value=tot;
		*/	
		
	}
</script>
</head>
<body> <!-- form_ex3.jsp -->

	<form name="pkc">
	<table width="600" align="center">
	<tr>
	<td>이름</td>
	<td>국어</td>
	<td>영어</td>
	<td>수학</td>
	<td>과학</td>
	<td>총점</td>
	</tr>
	<tr>
	<td>홍길동</td>
	<td><input type="text" size="3" name="kor"></td>
	<td><input type="text" size="3" name="eng"></td>
	<td><input type="text" size="3" name="mat"></td>
	<td><input type="text" size="3" name="sci"></td>
	<td><input type="button" value="계산" onclick="cal(0)"></td>
	<td><input type="text" size="4" name="result"></td>
	</tr>
	<tr>
	<td>슈퍼맨</td>
	<td><input type="text" size="3" name="kor"></td>
	<td><input type="text" size="3" name="eng"></td>
	<td><input type="text" size="3" name="mat"></td>
	<td><input type="text" size="3" name="sci"></td>
	<td><input type="button" value="계산" onclick="cal(1)"></td>
	<td><input type="text" size="4" name="result"></td>
	</tr>
	<tr>
	<td>배트맨</td>
	<td><input type="text" size="3" name="kor"></td>
	<td><input type="text" size="3" name="eng"></td>
	<td><input type="text" size="3" name="mat"></td>
	<td><input type="text" size="3" name="sci"></td>
	<td><input type="button" value="계산" onclick="cal(2)"></td>
	<td><input type="text" size="4" name="result"></td>
	</tr>	
	</table>
	</form>

</body>
</html>