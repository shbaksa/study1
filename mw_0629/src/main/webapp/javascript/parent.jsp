<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
span , b{
font-size:36px;
}
</style>
	<script>
		
		function winopen(){
			
			
			s1 = open("son.jsp","aa","width=300,height=200");	
			// ("새로운창에보여줄문서","타겟이름","창의 옵션");
			// url ? option
			// s1 <= 자식이름 son파일에 있는 자료를 불러올때 s1.document.~~ 자바스크립트에 있는 값만
			// s2 = open("son2.jsp","aa","width=300,height=200,top=400,left=800");	
			
		}
		function son_blue(){
			
			s1.document.getElementById("aa").style.color="blue";
		}
	
		function son_black(){
			
			s1.document.getElementById("aa").style.color="black";
		}
	
		function sonfunc(){
			
			// 자식창의 함수
			s1.test();
		}
		function test(){
			
			alert("부모창 함수");
		}
	</script>
</head>
<body>	<!-- parent.jsp -->
	
	<span id="aa">부모 창</span> <p>
	
	<b onclick="winopen()">창 열기</b> <p>
	<hr>
	<!-- 아래를 클릭하면 자식창의 '자식 창'글자의 색을 파랑 -->
	<input type="button" onclick="son_blue()" value="자식창파란색"> <p>
	<input type="button" onclick="son_black()" value="자식창검은색"> <p>
	<hr>
	<!-- 아래를 클릭하면 자식창의 자바스크립트 함수 실행 -->
	<input type="button" onclick="sonfunc()" value="자식창함수실행"> <p>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>