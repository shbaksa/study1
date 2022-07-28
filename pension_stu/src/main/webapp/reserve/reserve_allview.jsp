<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dao.ReserveDao" %>
<c:if test="${userid==null }">
	<c:redirect url="../member/login.jsp"/>
</c:if>
<%
	ReserveDao rdao = new ReserveDao();
	rdao.allView(request, session);

%>
 <!-- reserve/reserve_allview.jsp -->    
<c:import url="../top.jsp"/>
<style>
#section{
	width:1100px;
	margin:auto;
}

</style>
   	   
   <div id="section">
   	<table width="900" align="center">
   	<caption>
   	<b style="font-size:24px;">${name}님의 예약현황</b>
   	</caption>
   	<tr>
   	<td>방</td>
   	<td>입실일</td>
   	<td>퇴실일</td>
   	<td>숯패키지</td>
   	<td>bbq</td>
   	<td>총결제금액</td>
   	<td>예약일</td>
   	</tr>
   	<c:forEach var="rdto" items="${rlist}">   	
   	<tr>
   	<td><a href="../reserve/reserve_view.jsp?id=${rdto.id}">${rdto.bang}</a></td>
   	<td>${rdto.inday}</td>
   	<td>${rdto.outday}</td>
   	<td>${rdto.charcoal}개</td>
   	<td>${rdto.bbq}개</td>
   	<td><fmt:formatNumber value="${rdto.total}"/>원</td>
   	<td>${rdto.writeday}</td>
   	</tr>
   	</c:forEach>
   	
   	</table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>