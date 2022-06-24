<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
	function view(my){
	/* var f = document.pkc.phone.value.substring(0,3);
	var s = document.pkc.phone.value.substring(4,8);
	var l = document.pkc.phone.value.substring(9);
	document.pkc.p1.value=f;
	document.pkc.p2.value=s;
	document.pkc.p3.value=l; */
	
	var ph = my.phone.value;
	var f = ph.substring(0,3);
	var s = ph.substring(4,8);
	var l = ph.substring(9);
	
	my.p1.value=f;
	my.p2.value=s;
	my.p3.value=l;
	
	
	}
	 
	function check(my){
		
		var phone=my.phone1.value; // - 를 구분하여 잘라야 한다.
		var pho = phone.split("-"); // pho[0],pho[1],pho[2]
		
		my.p4.value=pho[0];
		my.p5.value=pho[1];
		my.p6.value=pho[2];
		
	}
	</script>
</head>
<body>	<!-- string.jsp -->
	<!-- 전화번호를 입력하면 앞자리, 중간, 뒷자리를 잘라서 밑에 있는 폼에 넣기 -->

	<form name="pkc">
	전화번호 <input type="text" name="phone"> <p>
	<button type="button" onclick="view(this.form)">클릭</button> <p>
	<input type="text" name="p1" size="3">-
	<input type="text" name="p2" size="3">-
	<input type="text" name="p3" size="3">
	</form>
	
	<hr>
	
	<form name="pkc1">
	전화번호 <input type="text" name="phone"> <p>
	<button type="button" onclick="check(this.form)">클릭</button> <p>
	<input type="text" name="p4" size="3">-
	<input type="text" name="p5" size="3">-
	<input type="text" name="p6" size="3">
	</form>

</body>
</html>