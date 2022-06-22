<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- table2.jsp -->
  <!-- 3행 3열 테이블 만들기 -->
  <table border="1" width="200" height="200">
    <tr>
      <td> 1 </td>
      <td> 2 </td>
      <td> 3 </td>
    </tr>
    <tr>
      <td> 4 </td>
      <td> 5 </td>
      <td> 6 </td>
    </tr>
    <tr>
      <td> 7 </td>
      <td> 8 </td>
      <td> 9 </td>
    </tr>
  </table>
 
  <hr>
  <!-- 2번과 3번 합치기 -->
  <table border="1" width="200" height="200">
    <tr>
      <td> 1 </td>
      <td colspan="2"> 2 </td>
    </tr>
    <tr>
      <td> 4 </td>
      <td> 5 </td>
      <td> 6 </td>
    </tr>
    <tr>
      <td> 7 </td>
      <td> 8 </td>
      <td> 9 </td>
    </tr>
  </table>
  
  <hr>
  <!-- 1, 4 합치기 -->
  <table border="1" width="200" height="200">
    <tr>
      <td rowspan="2"> 1 </td>
      <td> 2 </td>
      <td> 3 </td>
    </tr>
    <tr>
      <td> 5 </td>
      <td> 6 </td>
    </tr>
    <tr>
      <td> 7 </td>
      <td> 8 </td>
      <td> 9 </td>
    </tr>
  </table>
</body>
</html>