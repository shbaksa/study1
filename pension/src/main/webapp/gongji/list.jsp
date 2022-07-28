<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.GongjiDao" %>
<%
    GongjiDao gdao=new GongjiDao();
    gdao.list(request);
%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<c:import url="../top.jsp"/>
<style>
   #section {
     width:1100px;
     height:500px;
    margin:auto;
  }
</style>
  <div id="section">
    <table width="800" align="center">
      <caption> <h2> 공 지 사 항 </h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> 작성자 </td>
        <td> 작성일 </td>
      </tr>
     <c:forEach items="${list}" var="gdto"> 
      <tr>
        <td>
          <!-- 그림은 gubun값이 1일경우 -->
         <c:if test="${gdto.gubun == 1}">          
          <img src="../img/gg.png" width="20">
         </c:if>
           <a href="content.jsp?id=${gdto.id}"> ${gdto.title} </a> 
        </td>
        <td> 관리자 </td>
        <td> ${gdto.writeday} </td>
      </tr>
     </c:forEach> 
     <c:if test="${userid == 'admin'}">
      <tr>
        <td colspan="3" align="center">
          <a href="write.jsp"> 글쓰기 </a> 
        </td>
      </tr>
     </c:if>
    </table>
  </div>
<c:import url="../bottom.jsp"/>






