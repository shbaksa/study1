<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   input[type=text] ,input[type=password] {
       width:200px;
       height:26px;
   }
   #title {
       width:400px;
   }
   textarea {
       width:400px;
       height:100px;
   }
   td {
      padding-top:10px;
   }
   input[type=submit] {
      width:300px;
      height:40px;
      border:1px solid red;
      color:red;
      font-size:20px;
      background:white;
      border-radius:10px;
   }
   input[type=submit]:hover {
      color:white;
      background:red;
   }
 </style>
</head>
<body>  <!-- board2/write.jsp -->
 <form method="post" action="write_ok.jsp">
  <table width="500" border="0" align="center">
    <caption><h2>게시판 글쓰기</h2></caption>
    <tr>
      <td> 제 목 </td>
      <td> <input type="text" name="title" id="title"> </td>
    </tr>
    <tr>
      <td> 이 름 </td>
      <td> <input type="text" name="name"> </td>
    </tr>
    <tr>
      <td> 내 용 </td>
      <td> <textarea cols="40" rows="5" name="content"></textarea> </td>
    </tr>
    <tr>
      <td> 비 번 </td>
      <td> <input type="password" name="pwd"> </td>
    </tr>
    <tr>
      <td> 지 역 </td>
      <td> 
         <input type="radio" name="area" value="0">서울
         <input type="radio" name="area" value="1">경기
         <input type="radio" name="area" value="2">강원
         <input type="radio" name="area" value="3">충청
         <input type="radio" name="area" value="4">전라
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="checkbox" name="bimil" value="1">
        체크하시면 해당글은 비밀글이 됩니다.
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center"> <input type="submit" value="글쓰기"> </td>
    </tr>
  </table>
 </form>
</body>
</html>
















