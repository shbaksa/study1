<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   <form method="post" action="write_ok.jsp" enctype="multipart/form-data">
    <table width="500" align="center">
      <caption> <h2> 여 행 후 기 작 성</h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> <input type="text" name="title" size="40"> </td>
      </tr>
      <tr>
        <td> 내 용 </td>
        <td> <textarea cols="40" rows="6" name="content"></textarea> </td>
      </tr>
      <tr>
        <td> 파 일 </td>
        <td> <input type="file" name="fname"> </td>
      </tr>
      <tr>
        <td colspan="2" align="center"> 
          <input type="submit" value="저장">
        </td>
      </tr>
    </table>
   </form>
  </div>
<c:import url="../bottom.jsp"/>









