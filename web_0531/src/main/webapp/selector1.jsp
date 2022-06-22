<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    input[type=text] {  /* input태그 중에서 type의 속성값이 text인것 */
       width:300px;
       height:40px;
    }
    input[type=password] {
       width:300px;
       height:40px;
    }
    input[type=button] {
       width:300px;
       height:40px;
       background:green;
       border:1px solid green;
       color:white;
    }
    input[type=submit] {
       width:300px;
       height:40px;
       background:red;
       border:1px solid red;
       color:white;
    }
    input[type=reset] {
       width:300px;
       height:40px;
       background:white;
       border:1px solid red;
       color:red;
    }
    input[type=reset]:hover {  /* 해당 선택자에 마우스가 올라가면 */
       background:red;
       border:1px solid red;
       color:white;
    }
  </style>
</head>
<body>  <!-- selector1.jsp -->
  <!-- 선택자 : 태그 , id, class -->
  <!-- 속성선택자 : 태그내에 속성을 가진다 => 속성을 이용하여 style을 적용 -->
  <form>
    <input type="text""> <p>
    <input type="password"> <p>
    <input type="button" value="선택"> <p>
    <input type="submit" value="전송"> <p>
    <input type="reset" value="취소"> <p>
    <input type="text">
  </form>
</body>
</html>