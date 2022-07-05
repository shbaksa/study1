<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
	
		function move(my){
			
			if(my.name.value == ""){
				alert("이름빈칸");
				return false;
			}
			else if(my.kor.value == ""){
				alert("국어점수 빈칸");
				return false;
			}
			else if(my.eng.value == ""){
				alert("영어점수 빈칸");
				return false;
			}
			else if(my.mat.value == ""){
				alert("수학점수 빈칸");
				return false;
			}
			else
				return true;
				
		}
	
	</script>
</head>
<body>
	
	<form method="post" action="write_ok_me.jsp" onsubmit="return move(this)">
	이름 <input type="text" name="name" placeholder="이름">
	국어점수 <input type="text" name="kor" placeholder="국어점수">
	영어점수 <input type="text" name="eng" placeholder="영어점수">
	수학점수 <input type="text" name="mat" placeholder="수학점수">
	<input type="submit" value="점수입력">
	
	</form>

</body>
</html>