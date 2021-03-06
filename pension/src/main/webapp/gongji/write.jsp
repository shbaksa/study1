<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<c:if test="${userid != 'admin'}">
  <c:redirect url="../main/index.jsp"/>
</c:if>
<c:import url="../top.jsp"/>
<style>
  #section {
    width:1100px;
    height:500px;
    margin:auto;
  }
</style>
  <div id="section">
   <form method="post" action="write_ok.jsp">
    <table width="500" align="center">
      <caption> <h2> 공지사항 글쓰기 </h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> <input type="text" name="title"> </td>
      </tr>
      <tr>
        <td> 내 용 </td>
        <td> <textarea cols="40" rows="5" name="content"></textarea></td>
      </tr>
      <tr>
        <td colspan="2">
          <input type="checkbox" name="gubun" value="1">
          이 글을 항상 첫페이지에 출력하고자 하면 체크하세요
        </td>
      </tr>
      <tr>  
        <td colspan="2" align="center"> <input type="submit" value="저장"> </td>
      </tr>
    </table>
   </form>
  </div>
<c:import url="../bottom.jsp"/>