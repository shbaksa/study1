<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="write_ok.jsp"> 
   <table width="600" align="center">
     <tr>
       <td> 제목 </td>
       <td> <input type="text" name="title" size="50"> </td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <input type="text" name="name"> </td>
     </tr>
     <tr>
       <td> 내용 </td>
       <td> <textarea cols="50" rows="6" name="content"></textarea> </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> <input type="text" name="email" size="30"> </td>
     </tr>
     <tr>
       <td align="center" colspan="2"> <input type="submit" value="저장">  </td>
     </tr>
   </table>
  </form>
</body>
</html>