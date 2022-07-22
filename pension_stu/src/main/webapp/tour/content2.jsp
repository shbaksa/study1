<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>     
<%@page import="dao.TourDao" %>
<%
    TourDao tdao=new TourDao();
    tdao.content(request);
%>
<c:import url="../top.jsp"/>
<style>
   #section {
     width:1100px;
     height:700px;
    margin:auto;
  }
   #section tr {
     height:30px;
   }
   #section a {  /* 목록 , 수정, 삭제 꾸미기 */
     text-decoration:none;
     display:inline-block;
     width:100px;
     height:27px;
     padding-top:4px;
     border:1px solid purple;
     color:purple;
     margin-left:30px;
   }
   #zoom_id {
     position:absolute;
     visibility:hidden;
   }
</style>
<script>
 function zoom(my)
 {   
	 document.getElementById("zoom_id").style.visibility="visible";
	 document.getElementById("zoom_img").src=my;
	 center_img();
 }
 function center_img()
 { 
	 if(innerWidth>1000) // 브라우저의 가로가 1000px이상인 경우에만 동작
	 {	 
	   var w=(innerWidth-600)/2;
	   document.getElementById("zoom_id").style.left=w+"px";
	   // 그림을 브라우저의 가로기준으로 중앙에 배치
	 }
 }
 function hide(my)
 {
	 my.style.visibility="hidden";
 }
 window.onresize=center_img;
</script>
  <div id="zoom_id" onclick="hide(this)"><img id="zoom_img" width="600"><span id="dd"></span></div>
  <div id="section">
    <table width="700" align="center">
      <caption> <h2> 여 행 후 기 </h2> </caption>
      <tr>
       <td> 제목 </td>
       <td colspan="3"> ${tdto.title} </td>
     </tr>
     <tr>
       <td width="60"> 작성자 </td>
       <td> ${tdto.userid} </td>
       <td width="100"> 조회수 </td>
       <td> ${tdto.readnum} </td>
     </tr>
     <tr>
       <td> 작성일 </td>
       <td colspan="3"> ${tdto.writeday} </td>
     </tr>
     <tr ${fn:length(tdto.file)}>
       <td> 내용 </td>
       <td colspan="3" align="center">
         <!-- tdto.file => 배열 -->
        <c:forEach items="${tdto.file}" var="my">
          <img src="img/${my}" width="100" onclick="zoom(this.src)"> 
        </c:forEach> 
          <p>
          ${tdto.content}
       </td>
     </tr>
     <tr>
       <td colspan="4" align="center">
         <a href="list.jsp"> 목록 </a>
        <c:if test="${userid == tdto.userid}">  <!-- 회원 자신의 글일 경우 -->
         <a href="update.jsp?id=${tdto.id}"> 수정 </a>
         <a href="delete.jsp?id=${tdto.id}&fname=${tdto.fname}"> 삭제 </a>
        </c:if>
       </td>
     </tr>
    </table>
  </div>
<c:import url="../bottom.jsp"/>








