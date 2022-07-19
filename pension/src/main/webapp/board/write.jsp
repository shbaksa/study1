<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<style>
   #section {
     width:1100px;
     height:500px;
    margin:auto;
  }
</style>
<c:import url="../top.jsp"/>
  <div id="section">
   <form method="post" action="write_ok.jsp">
    <table width="500" align="center">
      <caption> <h2> 게시판 글쓰기 </h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> <input type="text" name="title"> </td>
      </tr>
      <c:if test="${userid == null}">
      <tr>
        <td> 비밀번호 </td>
        <td> <input type="password" name="pwd"> </td>
      </tr>
      </c:if> 
      <tr>
        <td> 내 용 </td>
        <td> <textarea cols="40" rows="6" name="content"></textarea></td>
      </tr>
      <tr align="center">
        <td colspan="2"> <input type="submit" value="글쓰기"> </td>
      </tr>
    </table>
   </form>
  </div>
<c:import url="../bottom.jsp"/>









