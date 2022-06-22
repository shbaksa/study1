<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- express.jsp -->
  <!-- 테이블에 그냥넣기 -->
  <table width="400" border="1">
    <tr>
      <td> 이름 </td>
      <td> 전화번호 </td>
      <td> 주소 </td>
      <td> 나이 </td>
    </tr>
    <tr>
      <td> 홍길동 </td>
      <td> 010-1234-5678 </td>
      <td> 서울시 </td>
      <td> 33 </td>
    </tr>
    <tr>
      <td> 뽀로로 </td>
      <td> 010-4567-7890 </td>
      <td> 겨울나라 </td>
      <td> 22 </td>
    </tr>
  </table>
  <%
      // 이름 , 전화번호, 주소 , 나이  => 표로 출력
      String name="홍길동";
      String phone="010-1234-5678";
      String juso="서울시";
      int age=33;
      String name2="뽀로로";
      String phone2="010-4567-7890";
      String juso2="겨울나라";
      int age2=22;
      
      out.print("<hr>");
      out.print("<table width='400' border='1'>");
      out.print("<tr>");
      out.print(" <td> 이름 </td>");
      out.print(" <td> 전화 </td>");
      out.print(" <td> 주소 </td>");
      out.print(" <td> 나이 </td>");
      out.print("</tr>");
      out.print("<tr>");
      out.print(" <td> "+name+" </td>");
      out.print(" <td> "+phone+" </td>");
      out.print(" <td> "+juso+" </td>");
      out.print(" <td> "+age+" </td>");
      out.print("</tr>");
      out.print("<tr>");
      out.print(" <td> "+name2+" </td>");
      out.print(" <td> "+phone2+" </td>");
      out.print(" <td> "+juso2+" </td>");
      out.print(" <td> "+age2+" </td>");
      out.print("</tr>");
      out.print("</table>");
  %>
  <hr>
  
  <table width="400" border="1">
    <tr>
      <td> 이름 </td>
      <td> 전화번호 </td>
      <td> 주소 </td>
      <td> 나이 </td>
    </tr>
    <tr>
      <td> <%=name%> </td>
      <td> <%=phone%> </td>
      <td> <%=juso%> </td>
      <td> <%=age%> </td>
    </tr>
    <tr>
      <td> <%=name2%> </td>
      <td> <%=phone2%> </td>
      <td> <%=juso2%> </td>
      <td> <%=age2%> </td>
    </tr>
  </table>
  
</body>
</html>






