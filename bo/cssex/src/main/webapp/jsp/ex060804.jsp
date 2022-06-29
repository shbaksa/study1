<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 변경</title>

</head>
<body>
<form method="post"  action="update_ok.jsp" >
<input type="hidden" name="UID" >
이름을 입력하세요. <input type="text" name="name"> <p>
포지션을 입력하세요. <input type="text" name="position"> <p>
등번호를 입력하세요. <input type="text" name="num"> <p>
<input type="submit" value="수정">
 </form>
</body>
</html>