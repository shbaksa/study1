<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- write.jsp : 질문 글 -->
 <form method="post" action="write_ok.jsp">
  <table width="500" align="center">
    <tr>
      <td> 제 목 </td>
      <td> <input type="text" name="title" size="40"> </td>
    </tr>
    <tr>
      <td> 이 름 </td>
      <td> <input type="text" name="name" size="6"> </td>
    </tr>
    <tr>
      <td> 내 용 </td>
      <td> <textarea cols="40" rows="6" name="content"></textarea> </td>
    </tr>
    <tr>
      <td> 비밀번호 </td>
      <td> <input type="password" name="pwd" size="6"> </td>
    </tr>
    <tr>
      <td colspan="2" align="center"> <input type="submit" value="글쓰기"> </td>
    </tr>
  </table>
 </form>
</body>
</html>