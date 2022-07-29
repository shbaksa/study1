<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dao.AdminDao" %>
<%
	AdminDao adao = new AdminDao();
	adao.reserve_check(request);
%>
 <!-- admin/reserve_view.jsp -->    
<c:import url="../top.jsp"/>
<style>
#section{
	width:1100px;
	height:500px;
	margin:auto;
}

</style>
   	   
   <div id="section">
   <table width="900" align="center">
   <caption><h2>예 약 현 황</h2></caption>
   	<tr>
   	<td>예약자</td>
   	<td>입실일</td>
   	<td>퇴실일</td>
   	<td>인 원</td>
   	<td>숯패키지</td>
   	<td>bbq</td>
   	<td>결제금액</td>
   	<td>객실명</td>
   	<td>예약일</td>
   	<td>상 태</td>
   	</tr>
   <c:forEach items="${rlist}" var="rdto">
   <tr>
   <td>${rdto.userid}</td>
   <td>${rdto.inday}</td>
   <td>${rdto.outday}</td>
   <td>${rdto.inwon}</td>
   <td>${rdto.charcoal}</td>
   <td>${rdto.bbq}</td>
   <td>${rdto.total}</td>
   <td>${rdto.bang}</td>
   <td>${rdto.writeday}</td>
  	<c:if test="${rdto.state == 0 }">
   		<td style="color:blue"> 예약완료 </td>  
   	</c:if>
   	<c:if test="${rdto.state == 1 }">
   		<td><a href="reserve_cancel.jsp?id=${rdto.id}" style="color:green;">예약취소중</a></td>
   	</c:if>
   	<c:if test="${rdto.state == 2 }">
   		<td style="color:red;text-decoration:line-through;">취소완료 </td>  
   	</c:if>
   	<c:if test="${rdto.state == 3 }">
   		<td><b>사용완료</b></td>
   	</c:if>
 	
  
  
  
  
  
  
  
  
   
   
   
   
   </tr>   
   </c:forEach>
   
   
   
   </table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>