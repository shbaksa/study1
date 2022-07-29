<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@page import="dao.AdminDao" %>
<%
   AdminDao adao=new AdminDao();
   adao.member_check(request);
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
     <caption> <h2> 회 원 현 황 </h2> </caption>
      <tr>
        <td> 이 름 </td>
        <td> 아이디 </td>
        <td> 전화번호 </td>
        <td> 상 태 </td>
      </tr>
    <c:forEach items="${mlist}" var="mdto">   
      <tr>
        <td> ${mdto.name} </td>
        <td> ${mdto.userid} </td>
        <td> ${mdto.phone} </td>
       <c:if test="${mdto.state == 0}"> 
        <td> 정상 회원 </td>
       </c:if>
       <c:if test="${mdto.state == 1}"> 
        <td> <a href="out_ok.jsp?id=${mdto.id}"> 탈퇴 신청 </a></td>
       </c:if>
       <c:if test="${mdto.state == 2}"> 
        <td> 탈퇴 회원 </td>
       </c:if>
      </tr>
    </c:forEach>  
    </table>
  </div>
<c:import url="../bottom.jsp"/>





