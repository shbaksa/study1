<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form method="post" action="write_ok.jsp" enctype="multipart/form-data">
     <table width="500" align="center">
       <caption><h2>여행 후기</h2></caption>
       <tr>
         <td> 제 목 </td>
         <td> <input type="text" name="title" size="40"> </td>
       </tr>
       <tr>
         <td> 내 용 </td>
         <td> <textarea cols="40" rows="5" name="content"></textarea>> </td>
       </tr>
       <tr>
         <td> 이 름 </td>
         <td> <input type="text" name="name" size="4"> </td>
       </tr>
       <tr>
         <td> 사 진 </td>
         <td> <input type="file" name="fname"> </td>
       </tr>
       <tr>
         <td colspan="2" align="center">
           <input type="submit" value="등록">
         </td> 
       </tr>
     </table>
   </form>
</body>
</html>