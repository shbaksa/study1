<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@page import="dao.TourDao"%>
<%
    TourDao tdao=new TourDao();
    tdao.update(request);
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
   <form method="post" action="update_ok.jsp" enctype="multipart/form-data">
   <input type="hidden" name="id" value="${tdto.id}">
   <input type="hidden" name="fname2" value="${tdto.fname}">
    <table width="500" align="center">
      <caption> <h2> 여 행 후 기 작 성</h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> <input type="text" name="title" size="40" value="${tdto.title}"> </td>
      </tr>
      <tr> 
        <td> 내 용 </td>
        <td> <textarea cols="40" rows="6" name="content">${tdto.content}</textarea> </td>
      </tr>
      <tr>
        <td> 파 일 </td>
        <td> <input type="file" name="fname"> 
         <img src="img/${tdto.fname}" width="100">  </td>
      </tr>
      <tr>
        <td colspan="2" align="center"> 
          <input type="submit" value="수정">
        </td>
      </tr>
    </table>
   </form>
  </div>
<c:import url="../bottom.jsp"/>









