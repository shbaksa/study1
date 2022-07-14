<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- foreach.jsp -->
 <!-- 반복문 : forEach -->
 <!-- 10번 반복하기 -->
 <c:forEach var="i" begin="1" end="10" step="1">
    안녕하세요 <p>
 </c:forEach>
 <hr>
 <!-- 1900년 부터 2022년까지 출력(select) -->
 <select>
 <%
  for(int i=1900;i<=2022;i++)
  {
 %>
   <option> <%=i%> </option>
 <%
  }
 %>
 </select>
 
  <select>
   <c:forEach var="i" begin="1900" end="2022"> <!-- step 생략시 1씩 증가 -->
    <option> ${i} </option>
   </c:forEach>
  </select>  
 <p>
 <!-- 2022년 부터 1990년까지 출력(select) -->
 <select>
 <%
  for(int i=2022;i>=1900;i--)
  {
 %>
   <option> <%=i%> </option>
 <%
  }
 %>
 </select>
 <!-- forEach문은 --를 사용할 수 없다 -->
 <select>
   <c:forEach var="i" begin="0" end="122"> <!-- step 생략시 1씩 증가 -->
    <option> ${2022-i} </option>
   </c:forEach>
  </select>  
</body>
</html>









 