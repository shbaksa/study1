<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@page import="dao.GongjiDao" %>
<%
    GongjiDao gdao=new GongjiDao();
    gdao.content(request);
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
     <table width="500" align="center">
       <caption> <h2> 공 지 사 항 </h2> </caption>
       <tr>
         <td> ${gdto.title} </td>
         <td> ${gdto.writeday} </td>
       </tr>
       <tr height="200">
         <td colspan="2"> ${gdto.content} </td>
       </tr>
       <tr>
         <td colspan="2" align="center">
         <a href="list.jsp"> 목록 </a>
        <c:if test="${userid == 'admin'}"> 
         <a href="update.jsp?id=${gdto.id}"> 수정 </a>
         <a href="delete.jsp?id=${gdto.id}"> 삭제 </a>
        </c:if>
         </td>
       </tr>
     </table>
  </div> 
<c:import url="../bottom.jsp"/>