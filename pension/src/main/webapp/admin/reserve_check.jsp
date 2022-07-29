<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@page import="dao.AdminDao" %>
<%
    AdminDao adao=new AdminDao();
    adao.reserve_check(request);
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
    <table width="1000" align="center">
      <caption> <h2> 예 약 현 황 </h2> </caption>
      <tr align="center">
        <td> 예약자 </td>
        <td> 입실일 </td>
        <td> 퇴실일 </td>
        <td> 인 원 </td>
        <td> 숯패키지 </td>
        <td> bbq </td>
        <td> 결제금액 </td>
        <td> 객실명 </td>
        <td> 예약일 </td>
        <td> 상 태 </td>
      </tr>
    <c:forEach items="${rlist}" var="rdto">  
      <tr align="center">
        <td> ${rdto.userid} </td>
        <td> ${rdto.inday} </td>
        <td> ${rdto.outday} </td>
        <td> ${rdto.inwon} </td>
        <td> ${rdto.charcoal} </td>
        <td> ${rdto.bbq} </td>
        <td> ${rdto.total} </td>
        <td> ${rdto.bang} </td>
        <td> ${rdto.writeday} </td>
        <c:if test="${rdto.state == 0 }">
           <td> 예약완료 </td>
        </c:if>
        <c:if test="${rdto.state == 1 }">
           <td> <a href="reserve_cancel.jsp?id=${rdto.id}"> 예약취소중 </a></td>
        </c:if>
        <c:if test="${rdto.state == 2 }">
           <td> 취소완료 </td>
        </c:if>
        <c:if test="${rdto.state == 3 }">
           <td> 사용완료 </td>
        </c:if>
      </tr>
    </c:forEach> 
   </table>
  </div>
<c:import url="../bottom.jsp"/>













