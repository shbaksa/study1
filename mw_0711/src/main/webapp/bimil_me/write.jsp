<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr,td{
	border : 1px solid black;
}
</style>
</head>
<body>
 
  <form method="post" action="write_ok.jsp">
    <table width="500" align="center">
    <caption><h1>게시판글작성</h1></caption>
      <tr>
        <td> 제목 </td>
        <td> <input type="text" name="title" size="40"> </td>
      </tr>
      <tr>
        <td> 이름 </td>
        <td> <input type="text" name="name" size="4"> </td>
      </tr>
      <tr>
        <td> 내용 </td>
        <td> <textarea cols="42" rows="6" name="content"></textarea> </td>
      </tr>
      <tr>
        <td> 비밀번호 </td>
        <td> <input type="password" name="pwd" size="4"> </td>
      </tr>
      <tr>
      <td> 비밀글 </td>
      <td> <input type="checkbox" name="bimil"></td>
      <tr>
        <td colspan="2" align="center">
           <input type="submit" value="글저장">
        </td>
      </tr>
    </table>
  </form>

</body>
</html>