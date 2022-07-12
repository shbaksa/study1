<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

	
	// 자바스크립트에서 checkbox에 접근할 방법을 정해야 된다
	function sub_change(my){ // 호출되면 하위 체크박스의 해제,체크가 된다
		
		var pr = [1000,1500,2300,3400,9000,10000];
		var len = document.pkc.sub.length;
		var tot=0;
		
		//alert(pr[0]+pr[1]);
		
		
		if(my.checked){
			for(i=0;i<len;i++){
				document.pkc.sub[i].checked=true;
				tot+=pr[i];	
			}
			document.getElementById("total").innerText=tot+"원"; 
		}
		else{
			for(i=0;i<len;i++)
				document.pkc.sub[i].checked=false;
			document.getElementById("total").innerText="0원"; 
		}
		
	}
	
	function main_change(){
		
		var pr = [1000,1500,2300,3400,9000,10000];
		var len = document.pkc.sub.length;
		var tot=0;

		var chk = 0;
		
		for(i=0;i<len;i++){
			
			if(document.pkc.sub[i].checked){
				chk++;
				tot=tot+pr[i];	
			}
			document.getElementById("total").innerText=tot+"원";
		}
		
		if(chk == len)
			document.pkc.main.checked=true;
		else
			document.pkc.main.checked=false;
	}
</script>
</head>
<body>

	<form name="pkc">
	<input type="checkbox" name="main" onclick="sub_change(this)"> 전체선택 <p> <hr>
	<input type="checkbox" name="sub" onclick="main_change()"> 첫번째 품목 1,000원<p>
	<input type="checkbox" name="sub" onclick="main_change()"> 두번째 품목 1,500원<p>
	<input type="checkbox" name="sub" onclick="main_change()"> 세번째 품목 2,300원<p>
	<input type="checkbox" name="sub" onclick="main_change()"> 네번째 품목 3,400원<p>
	<input type="checkbox" name="sub" onclick="main_change()"> 다섯번째 품목 9,000원<p>
	<input type="checkbox" name="sub" onclick="main_change()"> 여섯번째 품목 10,000원<p>
	</form>
	<div id="total">0원</div>
	
	
</body>
</html>