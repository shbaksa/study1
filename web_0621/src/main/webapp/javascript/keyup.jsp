<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function check(my)
    {
    	// card1인 이름을 가진 태그내의 값을 가져온다 => 길이를 구하기
    	// 길이가 4가되면 다음 입력폼으로 이동
    	//document.pkc.card1.value
    	if(my.value.length==4)
    		document.pkc.card2.focus();
    }
    function check2(my)
    {
    	if(my.value.length==4)
    		document.pkc.card3.focus();
    }
    function check3(my)
    {
    	if(my.value.length==4)
    		document.pkc.card4.focus();
    }
  </script>
</head>
<body> <!-- keyup.jsp : 일정길이가 들어오면 다음 폼태그로 이동 -->
  <form name="pkc">
    <input type="text" name="card1" maxlength="4" onkeyup="check(this)" size="3">-
    <input type="text" name="card2" maxlength="4" onkeyup="check2(this)" size="3">-
    <input type="text" name="card3" maxlength="4" onkeyup="check3(this)" size="3">-
    <input type="text" name="card4" size="3">-
  </form>
</body>
</html>