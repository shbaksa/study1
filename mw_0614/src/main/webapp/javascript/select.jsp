<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function check()
	{
		// select 태그가 선택이 안되었을경우 경고장 전송X
		// alert(document.pkc.anju.value);
		// 체크가 되었다 안되었다 value로 확인 => 0이면 안된다
		/* if(document.pkc.anju.value=0);
		{
			alert("선택을 하세요");
			return false;
		}
		elcse {
			return true;
		} */
		//alert(document.pkc.anju.selectedIndex); // selectdInde => option태그 중에 선택된 option의 인ㄷㄱ스 출력
		
		/* if(document.pkc.anju.selectedIndedx==0){
			
			alert("선택해주세요");
			return false;
		}
		else 
			{
				return true;
			} */
		
			// 선택된 option 태그의 value 출력하라
		alert(document.pkc.anju.value);
		alert(document.pkc.anju[document.pkc.anju.selectedIndex].value);
}
</script>
</head>
<body> <!-- select.jsp => select 태그의 유효성 검사 -->

	<form name="pkc" method="post" action="a.jsp" onsubmit="return check()">
		좋아하는 안주
		<select name="anju"> <!-- 서버로 전송시에 value가 없으면 text가 전송된다 -->
		<option value="0"> 선 택</option>
		<option value="1"> 탕수육 </option>
		<option value="2"> 팔보채 </option>
		<option value="3"> 육 회</option>
		<option value="4"> 연어회</option>
		<option value="5"> 돌돔회</option>
		</select> <p>
		<input type="submit" value="전송">
	</form>

</body>
</html>