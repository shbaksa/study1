<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function cal() {
		var a = Number(document.pkc1.a.value);
		var b = Number(document.pkc1.b.value);		
		var tot=0;
		var imsi=0;
		if(b<a) {
				b=imsi;
				b=a;
				a=imsi;	
			}
		for(i=a;i<=b;i++) {
				tot+=i;
			}
		document.pkc1.result.value=tot;
	}
	
	function cal1() {
		var n = parseInt(document.pkc2.n.value);
		var tot=0;
		for(i=1;i<=100;i++) {
				if(i%n == 0) {
						tot+=i;					
					}
			}
		document.pkc2.result.value=tot;
	}
	
	function cal2() {
		
		// var random = Math.floor(Math.random() * 45)+1; 
		var random = Math.random()*45;
		random = parseInt(random);
		random=random+1;
		document.pkc3.result.value=random;	
	}
</script>
</head>
<body>	<!-- 0614/form_ex2.jsp -->
	<!-- a부터 b까지의 합 구하기 -->
   <form name="pkc1">
     a:<input type="text" name="a" size="3">
     b:<input type="text" name="b" size="3">
     <input type="button" value="계산" onclick="cal()">
     결과:<input type="text" name="result" size="5">
   </form>
   <hr>
   <!-- 1~100까지의 n의 배수의 합 구하기 -->
   <form name="pkc2">
     n:<input type="text" name="n" size="3">
     <input type="button" value="계산" onclick="cal1()">
     결과:<input type="text" name="result" size="5">
   </form>
   <hr>
   <!-- 1~45까지의 임의의 숫자를 구하여 전달하기 -->
   <form name="pkc3">
     <input type="button" value="계산" onclick="cal2()">
     결과:<input type="text" name="result" size="5">
   </form>
</body>
</html>