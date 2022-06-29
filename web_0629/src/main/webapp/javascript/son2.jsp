<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function move()
    {
    	// 부모창 폼태그 = 자식창 폼태그;
        opener.document.pkc.name.value=document.pkc.name.value;
    	opener.document.pkc.age.value=document.pkc.age.value;
    }
  </script>
</head>
<body>
 <form name="pkc">
    이름 <input type="text" name="name"> <p>
    나이 <input type="text" name="age"> <p>
    <input type="button" onclick="move()" value="부모창에 값보내기">
  </form>
</body>
</html>