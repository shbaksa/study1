<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
 
<%@page import="dao.TourDao" %>
<%
   TourDao tdao=new TourDao();
   tdao.list(request);
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
     <table width="800" align="center">
      <caption> <h2> 여 행 후 기 </h2> </caption>
      <tr>
        <td> 작성자 </td>
        <td> 제 목 </td>
        <td> 사진갯수 </td>
        <td> 조회수 </td>
        <td> 작성일 </td>
      </tr>
      
    <c:forEach items="${list}" var="tdto">  
      <tr>
        <td> ${tdto.userid} </td>
        <td> <a href="readnum.jsp?id=${tdto.id}"> ${tdto.title} </a> </td>
        <td> <img src="img/${tdto.img}" width="30"> 외 ${tdto.cnt-1}개 </td>
        <td> ${tdto.readnum} </td>
        <td> ${tdto.writeday} </td>
      </tr>
    </c:forEach> 
     <c:if test="${userid != null}">
      <tr>
        <td colspan="5" align="right"> <a href="write.jsp">글쓰기</a> </td>
      </tr>
     </c:if>
    </table>
  </div>
<c:import url="../bottom.jsp"/>









