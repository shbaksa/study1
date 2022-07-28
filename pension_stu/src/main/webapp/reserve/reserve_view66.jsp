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
	rdao.reserve_view(request, session);

%>
 <!-- reserve/reserve_view.jsp -->    
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
   	<tr>
   	<td>${bang}</td>
   	<td>${rdto.inday}</td>
   	<td>${rdto.outday}</td>
   	<td>${rdto.charcoal}개</td>
   	<td>${rdto.bbq}개</td>
   	<td><fmt:formatNumber value="${rdto.total}"/>원</td>
   	<td>${rdto.writeday}</td>
   	</tr>
   	<tr>
   	<td colspan="7" align="center" style="border-top:1px solid black;"><a href="../reserve/reserve_allview.jsp">모든예약</a></td>
   	</tr>
   	
   	</table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>