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
       </tr>
       <tr align="center">
         <td> ${bang} </td>
         <td> ${rdto.inday} </td>
         <td> ${rdto.outday} </td>
         <td> ${rdto.charcoal}개 </td>
         <td> ${rdto.bbq}개 </td>
         <td> <fmt:formatNumber value="${rdto.total}"/>원 </td>
         <td> ${rdto.writeday} </td>
       </tr>
     </table>
  </div>
<c:import url="../bottom.jsp"/>








