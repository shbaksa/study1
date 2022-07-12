<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.sub{
		display:none;
	}
	
</style>
<script>

	function view(){
		
		var len = document.pkc.chk.length;
		
		for(i=0;i<len;i++){
			if(document.pkc.chk[i].checked)
				document.getElementsByClassName("sub")[i].style.display="block";
			else
				document.getElementsByClassName("sub")[i].style.display="none";
		}
	}


</script>
</head>
<body>

	<div>
		<form name="pkc">
		<input type="radio" name="chk" onclick="view()" checked>계좌이체
		<input type="radio" name="chk" onclick="view()">신용카드
		<input type="radio" name="chk" onclick="view()">핸드폰결제
		<input type="radio" name="chk" onclick="view()">현금지급
		<input type="radio" name="chk" onclick="view()">외상
		</form>
	</div><hr>
	<div class="sub" style="display:block;"> 계좌이체 관련 내용 </div>
	<div class="sub"> 신용카드 관련 내용</div>
	<div class="sub"> 핸드폰결제 관련 내용</div>
	<div class="sub"> 현금지급 관련 내용</div>
	<div class="sub"> 외상 관련 내용</div>
	

</body>
</html>