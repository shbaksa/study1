<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function cal()
	{	// var , let<중복선언불가 , const< 정수변환안됌
		// 국,영,수 값을 읽어오기
		//alert(document.pkc.kor.value&document.pkc.eng.value) 곱하기는 정수로 안바꿔도 작동은 함 그래도 정수 값으로 바꾸고 계산하기
		var kor = parseInt(document.pkc.kor.value); // 폼에 있는 value는 무조건 문자
		var eng = Number(document.pkc.eng.value);
		var mat = eval(document.pkc.mat.value); // 많이 안씀
		// 총점과 평균 구하기
		var tot = kor+eng+mat;
		var avg = tot/3;
		
		// 총점과 평균 폼태그에 값을 전달
		document.pkc.tot.value=tot;
		document.pkc.avg.value=avg;
	}

</script>
</head>
<body> <!-- 0614/form_ex1.jsp -->
	<!-- 키보드로 입력한 폼태그의 내용을 가지고 처리 -->
	<!-- 폼태그의 값들을 가지고 연산 -->
	
	<form name="pkc">
		국어 : <input type="text" name="kor" size="3"> 
		영어 : <input type="text" name="eng" size="3"> 
		수학 : <input type="text" name="mat" size="3"> 
		<input type="button" value="계산하기" onclick="cal()">
		총점 : <input type="text" name="tot" size="4"> 
		평균 : <input type="text" name="avg" size="4"> 
	</form>

</body>
</html>



	<!-- 1. 국,영,수 점수 입력후 버튼이 클릭
	- 버튼이 클릭되면 동작하는 함수가 필요 => function cal()
	
	
	cal()에서 실행되어야 될 내용
	
	- 값을 읽어온다
	- 총점과 평균을 구한다
	- 총점과 평균 폼태그에 값을 전달	
	
	
	
	
	
	
	
	-->