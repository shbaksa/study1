<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#aa {
			color:red;
			font-size:10px;
		}
		input[type=text]{
			width:300px;
			height:50px;
			font-size:36px;
			outline:none;
			border:1px solid gray;
		}
	</style>

	<script>
		function check(my){
			
			if(my.value.trim()==""){
				// alert("빈칸") // 아래의 포커스를 사용하고 싶으면 경고창이 아닌 innerText
				document.getElementById("aa").innerText="이름을 입력하세요";
				my.focus();
			}
			else
				document.getElementById("aa").innerText="";
		}
	</script>
</head>
<body>	<!-- blur.jsp 빈칸 호출하기 -->
	
	<form name="pkc">
	이름 <input type="text" name="name" onblur="check(this)"><span id="aa"></span> <p>
	나이 <input type="text" name="age" > <p>
	<input type="submit" name="전 송"> 
	</form>

</body>
</html>