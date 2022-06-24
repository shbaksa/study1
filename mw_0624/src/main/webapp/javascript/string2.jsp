<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		function view() {
			var f = document.pkc.title.value.substring(0,10);
			// var s = document.pkc.title.value.substring(11);
			var l = document.pkc.title.value.replaceAll(document.pkc.title.value.substring(10),"****");
			document.getElementById("aa").innerText=f;
			// document.getElementById("bb").innerText=s;
			// document.getElementById("cc").innerText=l;
			
			 var t = document.pkc.title.value.substring(10);
			var l = document.pkc.title.value.substring(10);
			
			for(i=0;i<=t.length;i++){
				
				 var s = l.replaceAll(t[i],"*");
				
			} 
			
			document.getElementById("bb").innerText=l;
			
		} 
		
		function check(){
			
			// 제목을 읽어온다
			var title1=document.pkc1.title1.value;
			// 제목에서 10개를 자릉ㄴ다
			var title1=title1.substring(0,10);
			// 10자+****를 id="aa"에 전달
			document.getElementById("cc").innerText=title1+"****";
			
			// 10자 이외의 값은 문자 하나당 * 하나로 처리
			var len=document.pkc1.title1.value.length;
			var str=title1;
			for(i=1;i<=len-10;i++){
				str=str+"*";
			}
			document.getElementById("dd").innerText=str;
			
		}
		
		function check1(){
			
			var t = document.pkc2.title2.value;
			var f = t.substring(0,10);
			var s = t.substring(10);
			document.getElementById("ee").innerText=f+"****";
			
			var len = t.length;
			var tr = f;
			
			for(i=1;i<=len-10;i++){
				tr=tr+"*";
			}
			document.getElementById("ff").innerText=tr;
		}
		
	</script>
</head>
<body>	<!-- string2.jsp -->

	<!-- 제목을 입력한 후 버튼을 클릭하면 앞에서부터 10자를 제외한 나머지는 ****로 처리하여 id="aa"에 전달 -->
	
	<form name="pkc">
	제목 <input type="text" name="title" size="50"> <p>
	<input type="button" onclick="view()" value="클릭"> <p>
	<div id="aa"></div>
	<div id="bb"></div>
	</form> 
	
	<hr>
	
	<form name="pkc1">
	제목 <input type="text" name="title1" size="50"> <p>
	<input type="button" onclick="check()" value="클릭"> <p>
	<div id="cc"></div><div id="dd"></div>
	</form>
	
	<hr>
	
	<form name="pkc2">
	제목 <input type="text" name="title2" size="50"> <p>
	<input type="button" onclick="check1()" value="클릭"> <p>
	<div id="ee"></div><div id="ff"></div>
	</form>

</body>
</html>