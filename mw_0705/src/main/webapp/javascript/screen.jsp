<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		function func1(){
			
			// screen.width , screen.height
			alert(screen.width+" "+screen.height);
			
		}
		function func2(){
			
			alert(screen.availWidth+" "+screen.availHeight);
		}
		function func3(){
			// 브라우저의 가로 세로 
			wh = innerWidth/2;
			he = innerHeight/2;
			alert(window.innerWidth+" "+window.innerHeight);
			alert((innerWidth/2)+" "+(innerHeight/2));
			alert(wh+" "+he);
			//open("screen_ex.jsp","","width='300',height='300',top='(innerWidth/2)',left='(innerHeight/2))')
			alert(document.documentElement.clientWidth+" " +document.documentElement.clientHeight);
		}
		function func4(){
			
			alert(document.body.clientWidth+" "+document.body.clientHeight);
		}
	
	</script>
</head>
<body>	<!-- screen.jsp => screen 객체 -->
	
	<input type="button" onclick="func1()" value="모니터가로세로"> <p>
	<input type="button" onclick="func2()" value="모니터이용가능가로세로"> <p>
	<input type="button" onclick="func3()" value="브라우저가로세로"> <p>
	<input type="button" onclick="func4()" value="브라우저가로세로2"> <p>

</body>
</html>