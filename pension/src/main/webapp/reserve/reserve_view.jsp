<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
     
<%@page import="dao.ReserveDao" %>
<%
   ReserveDao rdao=new ReserveDao();
   rdao.reserve_view(session,request);
%>
<c:import url="../top.jsp"/>
<style>
   #section {
     width:1100px;
     height:500px;
     margin:auto;
  }
</style>
  <div id="section">
     <table width="900" align="center">
       <caption> <h2> ${name}님의 예약내용 </h2> </caption>
       <tr align="center">
         <td> 방 </td>
         <td> 입실일 </td>
         <td> 퇴실일 </td>
         <td> 숯패키지 </td>
         <td> bbq </td>
         <td> 총결제금액 </td>
         <td> 예약일 </td>
         <td> 상 태 </td>
         <td> &nbsp; </td>
       </tr>
     <c:forEach items="${rlist}" var="rdto">
       <tr align="center">
         <td> ${rdto.bang} </td>
         <td> ${rdto.inday} </td>
         <td> ${rdto.outday} </td>
         <td> ${rdto.charcoal}개 </td>
         <td> ${rdto.bbq}개 </td>
         <td> <fmt:formatNumber value="${rdto.total}"/>원 </td>
         <td> ${rdto.writeday} </td>
         
        <c:if test="${rdto.state == 0 }">
           <c:set var="state" value="예약완료"/>
        </c:if>
        <c:if test="${rdto.state == 1 }">
           <c:set var="state" value="예약취소중"/>
        </c:if>
        <c:if test="${rdto.state == 2 }">
           <c:set var="state" value="취소완료"/>
        </c:if>
        <c:if test="${rdto.state == 3 }">
           <c:set var="state" value="사용완료"/>
        </c:if>
         <td> ${state} </td>
         <!-- 버튼 만들 td -->
         <!-- 예약완료일 경우 예약취소버튼 -->
         <c:if test="${rdto.state==0}">
           <td> <input type="button" onclick="location='state_change.jsp?id=${rdto.id}&state=1&ck=${ck}'" value="예약취소"> </td>
         </c:if>
         <!-- 예약취소중일 경우 취소철회버튼 -->
         <c:if test="${rdto.state==1}">
           <td> <input type="button" onclick="location='state_change.jsp?id=${rdto.id}&state=0&ck=${ck}'" value="취소철회"> </td>
         </c:if>      <!-- rdto.state==2 || rdto.state==3 -->
         <c:if test="${ !(rdto.state==0 || rdto.state==1) }">
            <td> &nbsp; </td>
         </c:if>
       </tr>
     </c:forEach>
     </table>
  </div>
<c:import url="../bottom.jsp"/>








