 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@page import="dao.ReserveDao" %>
<%
   ReserveDao rdao=new ReserveDao();
   // 달력 => 1일의 요일, 총일수, 몇주
   rdao.getCalendar(request);
   rdao.getRoom(request);
%>
   
<c:import url="../top.jsp"/>
<style>
  #section {
    width:1100px;
    margin:auto;
  }
  #section tr {
    height:50px;
  }
  
</style> 
  <div id="section">
     <table width="1000" align="center" border="1">
       <caption>
        <c:if test="${m==1}">
          <a href="reserve.jsp?y=${y-1}&m=12"> 이전 </a>
        </c:if>
        <c:if test="${m!=1}">
          <a href="reserve.jsp?y=${y}&m=${m-1}"> 이전 </a>
        </c:if>
          ${y}년 ${m}월  
        <c:if test="${m==12}">
          <a href="reserve.jsp?y=${y+1}&m=1"> 다음 </a>
        </c:if>
        <c:if test="${m!=12}">
          <a href="reserve.jsp?y=${y}&m=${m+1}"> 다음 </a>
        </c:if>  
          
       </caption>
       <tr>
         <td> 일 </td>
         <td> 월 </td>
         <td> 화 </td>
         <td> 수 </td>
         <td> 목 </td>
         <td> 금 </td>
         <td> 토 </td>
       </tr>
     <c:set var="day" value="1"/>
     <c:forEach  var="i" begin="1" end="6"> <!-- 행 -->
       <tr>
         <c:forEach var="j" begin="0" end="6">  <!-- 열 -->
          <c:if test="${(j < yoil && i==1) || (chong < day) }">
           <td> &nbsp; </td>
          </c:if>
          <c:if test="${ ( (j >= yoil && i==1) || i>1 ) && ( chong >= day )   }">
           <td> ${day} <p>
             <!-- 방의 이름을 출력 -->
             <c:forEach items="${rlist}" var="rdto">
               <a href="reserve_next.jsp?y=${y}&m=${m}&d=${day}&id=${rdto.id}"> ${rdto.bang} </a> <br>
             </c:forEach>
           </td>
           <c:set var="day" value="${day+1}"/>   <!-- 날짜값을 1씩 증가 -->
         </c:if>
          
         </c:forEach>
       </tr>
        
     </c:forEach>
     </table>
  </div>
<c:import url="../bottom.jsp"/>











