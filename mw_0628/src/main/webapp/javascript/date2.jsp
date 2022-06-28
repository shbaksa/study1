<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >Insert title here</title>
	
	<script>
		function input(){
			
			// 숫자를 문자
			// 1. 숫자+""
			// 2. toString();
			
			var today = new Date();
			var h = today.getHours().toString().padStart(2,'0');
			var m = today.getMinutes().toString().padStart(2,'0');
			var s = today.getSeconds().toString().padStart(2,'0');
			
			
			
			// PadStart();
			
			/* if(h.length==1)
				h="0"+h;
			if(m.length==1)
				m="0"+m; */
			/* if(s.length==1)
				s="0"+s; */
			document.getElementById("aa").innerText=h+" : "+m+" : "+s;
			
				/* const id = '아이디입니다'
					const temp = id.slice(0, 3);
					const result = temp.padEnd(id.length, '*');

					console.log(result);
					// 아이디*** */
			
			
			
			/* if(h>12 && s<10 && m<10)
				document.getElementById("aa").innerText="0"+(h-12)+" : "+m+" : "+s;
			else if(m<10 && s<10)
				document.getElementById("aa").innerText=h+" : 0"+m+" : 0"+s;
			else if(h>12)
				document.getElementById("aa").innerText="0"+(h-12)+" : 0"+m+" : 0"+s;	
			else if(m<10)
				document.getElementById("aa").innerText=h+" : 0"+m+" : "+s;
			else if(s<10)
				document.getElementById("aa").innerText=h+" : "+m+" : 0"+s;
			else if(h<12 && m>10 && s>10)
			document.getElementById("aa").innerText=h+" : "+m+" : "+s; */
				
		}
		function start(){
			
			setInterval(input,1000);
		}
	</script>
</head>
<body onload="start()">	<!-- date2.jsp -->

	현재 시간 <span id="aa"></span> <p>
	<!-- <input type="button" onclick="start()" value="클릭"> -->

</body>
</html>