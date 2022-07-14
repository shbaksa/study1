<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- set.jsp -->
 <%
     request.setAttribute("name", "홍길동");
   
     String juso="서울시 영등포구";
     String phone="010-1234-5678";
     
     request.setAttribute("juso",juso);
 %>
  <c:set var="phone" value="<%=phone%>"/>
  
  ${name} ${juso} ${phone}
  <hr>
  pageContext : ${pageScope.phone} <p>
  request : ${requestScope.phone }<p>
  session : ${sessionScope.phone }<p>
  application : ${applicationScope.phone }<p>
</body>
</html>







