<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function check() {
			// 0 => 48 , 9 => 57
			if(event.keyCode >= 48 && event.keyCode <= 57){
				return true;
			}
			else
				return false;
			
		}
		function check1(my){
			my.value=my.value.replace(/[^0-9]/g,""); // 0~9가 아닌것은 ""
		}
		function check2(my){
			my.value=my.value.replace(/[0-9]/g,""); // 0~9 만 ""
		}
		function check3(my){
			my.value=my.value.replace(/[^a-zA-Z]/g,""); // a~zA~Z가 아닌것은 "" 
		}
		function check4(my){
			my.value=my.value.replace(/[a-zA-Z0-9]/g,""); // a~zA~Z0~9가 아닌것은 ""
		}
		
		
	</script>
</head>
<body>	<!-- keypress2.jsp -->
	<!-- 숫자만 입력(영문X,한글O) -->
	<h1>한글만 입력받기</h1>
	<input type="text" onkeypress="return check()"> <p>
	<hr>
	<!-- 정규표현식을 이용한 입력 -->
	<!-- 숫자만 입력하기 -->
	<h1>숫자만 입력하기</h1>
	숫자만 : <input type="text" onkeyup="check1(this)"> <p>
	<hr>
	<!-- 문자만 입력하기 -->
	<h1>문자만 입력하기</h1>
	문자만 : <input type="text" onkeyup="check2(this)"> <p>
	<hr>
	<!-- 영문만 입력하기 -->
	<h1>영문만 입력하기</h1>
	영문만 : <input type="text" onkeyup="check3(this)"> <p>
	<hr>
	<!-- 한글만 입력하기 -->
	<h1>한글만 입력하기</h1>
	한글만 : <input type="text" onkeyup="check4(this)"> <p>
	
</body>
</html>