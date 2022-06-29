<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function check(){
			
			//alert(document.pkc.food[2].checked);
			 var chk=0;
			
			for(i=0;i<5;i++){
				
				if(document.pkc.food[i].checked)
					chk=1;
			} 
			
			if(chk==0){
				
				alert("체크를 하세요");
				return false;
			}
			else
				return true;
				
		}
	</script>
</head>
<body> <!-- vote.jsp : radio를 이용한 투표 -->

<form name="pkc" method="post" action="vote_ok.jsp" onsubmit="return check()">
	<input type="hidden" name="id" value="1">
		<p><div><h2>좋아하는 점심 메뉴를 선택해 주세요</h2></div></p>
		<div><input type="radio" name="food" value="0"> 순대국</div>
		<div><input type="radio" name="food" value="1"> 부대찌개</div>
		<div><input type="radio" name="food" value="2"> 짜장면</div>
		<div><input type="radio" name="food" value="3"> 초 밥</div>
		<div><input type="radio" name="food" value="4"> 김 밥</div>
		<div><input type="submit" value="투표하기"></div>
	</form> 

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>