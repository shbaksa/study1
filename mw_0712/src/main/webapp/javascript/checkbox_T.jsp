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
				
		var len = document.pkc.sub.length;

		if(my.checked){
			
			for(i=0;i<len;i++)
				document.pkc.sub[i].checked=true;
		}
		else{
			for(i=0;i<len;i++)
				document.pkc.sub[i].checked=false;	
		}
		
		price_total();
	}
	
	function main_change(){
				
		var len = document.pkc.sub.length;
		var chk = 0;
		
		for(i=0;i<len;i++){	
			
			if(document.pkc.sub[i].checked)
				chk++;
		}
		
		if(chk == len)
			document.pkc.main.checked=true;
		else
			document.pkc.main.checked=false;
		
		price_total();
	}
	// sub 체크박스의 체크유무를 이용한 가격의 합 구하기
	
	var price=[1000000,15000000,230000,3400000000,90000000,1000000000000000000];
	
	function price_total(){
		
		var total=0;
		var len=document.pkc.sub.length;
		
		for(i=0;i<len;i++){
			
			if(document.pkc.sub[i].checked)
				total=total+price[i];
			
		}
		/* if(sub의 0번 인덱스가 참이냐)
			total=total+해당품목의가격(price[0])
		if(sub의 1번 인덱스가 참이냐)
			total=total+해당품목의가격(price[1])
		if(sub의 2번 인덱스가 참이냐)
			total=total+해당품목의가격(price[2])		
		if(sub의 3번 인덱스가 참이냐)
			total=total+해당품목의가격(price[3])
		if(sub의 4번 인덱스가 참이냐)
			total=total+해당품목의가격(price[4])		
		if(sub의 5번 인덱스가 참이냐)
			total=total+해당품목의가격(price[5]) */
	
		document.getElementById("total").innerText=new Intl.NumberFormat().format(total)+"원";
		// new Intl.NumberFormat(지폐종류옵션).format(값) 크기에맞게 ,가 찍혀서 나옴
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