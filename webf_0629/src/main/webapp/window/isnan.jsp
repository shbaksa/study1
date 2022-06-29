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
    	var age=my.age.value;
    	alert(isNaN(age));
    	
    	return false;
    }
</script>
</head>
<body> <!-- isnan.jsp -->
    <form name="pkc" onsubmit="return check(this)">
      나이 <input type="text" name="age">
       <input type="submit" value="전송">
    </form>
</body>
</html>