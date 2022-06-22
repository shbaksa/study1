<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- key.jsp -->
	<!-- 크기는 size -->
	이름 <input type="text" size="5"> <p>
	주소 <input type="text" size="40"> <p>
	나이 <input type="text" size="2"> <p>
	비번 <input type="password" size="10"> <p>
	<textarea rows="6" cols="40"></textarea> <p>
	<hr>
	생년월일 <input type="text" size="8" maxlength="8"> <p>
	구매후기 <textarea rows="5" cols="50" maxlength="100"></textarea> <p>
	<hr>
	
	<!-- 입력폼내에 글자 출력 -->
	<input type="text" placeholder="아이디" maxlength="16"><p>
	<input type="password" placeholder="비밀번호" ><p>
	
	<!-- 사용불가 -->
	<input type="text" disabled><p>
	<input type="checkbox" disabled><p> <!-- 나중에 자바스크립트에서 많이사용  -->
	
	<!-- 미리 선택되어서 보이기 --> 
	<input type="radio">서울
	<input type="radio" checked>경기 <!-- radio,checkbox 둘다 사용가능 checked 미리 선택되서 나옴 -->
	<input type="radio">제주 <p>
	<select>
		<option> 선택 </option>
		<option> SKT </option>
		<option selected> KT </option> <!-- select에서는 selected 를 사용 -->
		<option> LGU+ </option>
		<option> 기타 </option>	
	</select> <p>
	
	<input type="radio"checked>
	<input type=radio checked> <p> <!-- ""가 없으면 확실히 띄어쓰기를 해줘야 작동 그래도 ""는 써주는걸로 -->
	
	
</body>
</html>