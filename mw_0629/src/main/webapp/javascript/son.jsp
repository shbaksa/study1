<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
span{
font-size:36px;
}
</style>

	<script>
	
		function parent_blue(){
			
			opener.document.getElementById("aa").style.color="blue";
		}
	
		function parent_black(){
			
			opener.document.getElementById("aa").style.color="black";
		}
	
		function test(){
			
			alert("자식창 함수");
		}
		
		function parentfunc(){
			
			// 부모창의 함수
			opener.test();
		}
		
	</script>
</head>
<body>	<!-- son.jsp -->

	<span id="aa">자식 창</span> <p>
	<hr>
	<!-- 아래를 클릭하면 부모창의 '부모 창' 글자색 변경 -->
	<input type="button" onclick="parent_blue()" value="부모창파란색"> <p>
	<input type="button" onclick="parent_black()" value="부모창파란색"> <p>
	<hr>
	<!-- 아래를 클릭하면 부모창의 자바스크립트 함수 실행 -->
	<input type="button" onclick="parentfunc()" value="부모창함수실행"> <p>


























</body>
</html>