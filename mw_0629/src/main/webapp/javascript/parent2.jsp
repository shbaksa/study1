<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
	
		function winopen(){
			
			s1 = open("son2.jsp","aa","width=300,height=300");
		}
		function son_text(my){
			
			// 자식창의 폼태그=현재창의 폼태그;
			
			var n = my.name.value;
			var a = my.age.value;
			s1.document.pkc.name.value=n;
			s1.document.pkc.age.value=a;
		}
	</script>
</head>
<body>

	<input type="button" onclick="winopen()" value="자식창 열기">	<p>
	
	<form name="pkc">
	이름 <input type="text" name="name"> <p>
	나이 <input type="text" name="age"> <p>
	<input type="button" onclick="son_text(this.form)" value="자식창에 값보내기">
	</form>
	
	<hr>
	<!-- open(url, [target] , option) target 설명 -->
	<a href="http://naver.com" target="aa">isnan문서보기</a>

</body>
</html>