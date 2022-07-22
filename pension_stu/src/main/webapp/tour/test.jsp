<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	var size = 1; // id="outer" 안에 있는 type="file"의 갯수, name을 서로 다르게 하기 위해 사용

	function add() {

		size++;
		var outer = document.getElementById("outer");
		var inner = "<p class='fname'><input type='file' class='aa' name='fname"+size+"'></p>"
		//document.getElementById("outer").innerHTML=document.getElementById("outer").innerHTML+inner;
		outer.innerHTML = outer.innerHTML + inner;
	}
	function del() {

		if (size > 1) {
			document.getElementsByClassName("fname")[size - 1].remove();
			size--;
		}
	}
</script>
</head>
<body>
	<!-- test.jsp -->

	<input type="button" onclick="add()" value="추가">
	<input type="button" onclick="del()" value="삭제">
	<hr>
	<div id="outer">
		<p class="fname">
			<input type="file" class="aa" name="fname1">
		</p>
	</div>
</body>
</html>