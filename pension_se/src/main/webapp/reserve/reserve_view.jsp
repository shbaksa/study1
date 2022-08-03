<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dao.ReserveDao" %>
<%
	ReserveDao rdao = new ReserveDao();
	rdao.reserve_view(request, session);
%>
 <!-- 복사폼.jsp -->    
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
   	<td>상 태</td>
   	<td>&nbsp;</td>
   	</tr>
   	<c:forEach items="${rlist}" var="rdto">
   	<tr>
   	<td ><a href="../reserve/reserve_view.jsp">${rdto.bang}</a></td>
   	<td>${rdto.inday}</td>
   	<td>${rdto.outday}</td>
   	<td>${rdto.charcoal}개</td>
   	<td>${rdto.bbq}개</td>
   	<td><fmt:formatNumber value="${rdto.total}"/>원</td>
   	<td>${rdto.writeday}</td>
  
   
   	<c:if test="${rdto.state == 0 }">
   		<c:set var="state" value="예약완료"/>
   		<c:set var="str" value="style='color:blue'"/>
   	</c:if>
   	<c:if test="${rdto.state == 1 }">
   		<c:set var="state" value="예약취소중"/>
   		<c:set var="str" value="style='color:green'"/>
   	</c:if>
   	<c:if test="${rdto.state == 2 }">
   		<c:set var="state" value="취소완료"/>	
   		<c:set var="str" value="style='color:red;text-decoration:line-through;'"/>
   	</c:if>
   	<c:if test="${rdto.state == 3 }">
   		<c:set var="state" value="사용완료"/>
   		<c:set var="str" value=""/>
   	</c:if>
 	<td ${str}> ${state} </td>  
 	
 	<!-- 버튼 -->
 	<!-- 예약완료일 경우 예약취소버튼 -->
 	<c:if test="${rdto.state==0 }">
 	<td><input type="button" id="btn1" onclick="location='state_change.jsp?id=${rdto.id}&state=1&ck=${ck}'" value="예약취소"></td>
 	</c:if>
 	<!-- 예약취소중일 경우 예약취소버튼 -->
 	<c:if test="${rdto.state==1 }">
 	<td><input type="button" id="btn2" onclick="location='state_change.jsp?id=${rdto.id}&state=0&ck=${ck}'" value="취소철회"></td>
 	</c:if>
 	<c:if test="${rdto.state > 1}">
 	<td>&nbsp; </td>
 	</c:if>
 	
 
 	
   	
   	<%-- 
   	<td>
   	<c:if test="${rdto.state == 0 }">
   		예약완료
   	</c:if>
   	<c:if test="${rdto.state == 1 }">
   		취소신청중
   	</c:if>
   	<c:if test="${rdto.state == 2 }">
   		취소완료
   	</c:if>
   	<c:if test="${rdto.state == 3 }">
   		사용완료
   	</c:if>
 	</td>
   	 --%>

   	
   	</tr>
   	</c:forEach>
   	<tr>
   	<td colspan="9" align="center" style="border-top:1px solid black;"><a href="../reserve/reserve_view.jsp?ck=1">모든예약</a></td>
   	</tr>
   	
   	</table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>