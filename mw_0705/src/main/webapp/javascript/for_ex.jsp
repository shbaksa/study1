<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
	
	var arr=["홍길도","슈퍼맨","뽀로로","에디","몬스터"];
	
		// 위의 배열의 이름을 하나씩 읽어와서 하나의 문자열에 결합
		function for1(){
			
			var str="";
			
			for(i=0;i<arr.length;i++)
				str=str+arr[i]+" ";
			
			alert(str);
		}
		
		function for2(){
			
			var str="";
			
			for(i in arr)
				str=str+arr[i]+" "; // i가 index
			
			alert(str);
		}
		function for3(){
			
			var str="";
			
			for(i of arr)
				str=str+i+" "; // i가 value
			
			alert(str);
		}
	
	</script>
</head>
<body>	<!-- for_ex.jsp => for 의 다른 형태 -->

	<input type="button" onclick="for1()" value="for1"> <p>
	<input type="button" onclick="for2()" value="for2"> <p>
	<input type="button" onclick="for3()" value="for3"> <p>
</body>
</html>