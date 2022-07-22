<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#aa{

}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

var name = ["최윤선","장현석","김기범","정재영","윤자영","류동현"];
	
	function check(){
		
		alert(name.length);
		var n=parseInt(Math.random()*name.length);
		alert(n);
		document.getElementById("a1").innerText=name[n];
		
	}



	$(function(){
		
		
	});

</script>
</head>
<body>	<!-- .jsp -->

	<input type="button" id="btn" onclick="check()" value="작                   동">
	
	<hr>
	
	당첨 : <div id="a1"></div>
</body>
</html>