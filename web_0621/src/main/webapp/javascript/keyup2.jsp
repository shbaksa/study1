<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function check(my,n)
    {
    	if(my.value.length==4)
    		document.pkc.card[n].focus();
    }
  </script>
</head>
<body> <!-- keyup2.jsp : 일정길이가 들어오면 다음 폼태그로 이동 -->
  <form name="pkc">
    <input type="text" name="card" maxlength="4" onkeyup="check(this,1)" size="3">-
    <input type="text" name="card" maxlength="4" onkeyup="check(this,2)" size="3">-
    <input type="text" name="card" maxlength="4" onkeyup="check(this,3)" size="3">-
    <input type="text" name="card" maxlength="4" size="3"> 
  </form>
</body>
</html>