<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- jstl에서 function  -->
<!-- tour/content.jsp -->
<%@ page import="dao.TourDao"%>
<%
TourDao tdao = new TourDao();
tdao.content(request);
%>
<c:import url="../top.jsp" />
<style>
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
 function hide_img(my)
 {
	 my.style.visibility="hidden";
 }
 window.onresize=center_img;
</script>

<div id="zoom_id" onclick="hide_img(this)"><img id="zoom_img" width="600"><span id="dd"></span></div>
<div id="tour_content_section">

	<table width="900" align="center">
		<caption>
			<h2>여 행 후 기</h2>
		</caption>
		<tr>
			<td width="70">제목</td>
			<td width="150">${tdto.title}</td>
			<td width="70">조회수</td>
			<td width="70">${tdto.readnum}</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${tdto.userid}</td>
			<td>작성일</td>
			<td>${tdto.writeday}</td>
		</tr>
		<tr>
			<td>사진</td>
			<td colspan="3">
				<%-- <!-- tdto.file => 배열 for구문 --> ${fn:length(tdto.temp)} <!-- 배열크기 구하기 -->
				, ${tdto.num } <c:forEach var="i" begin="0" end="${fn:length(tdto.temp)-1}">
				<c:forEach var="i" begin="0" end="${tdto.num-1}">
					<img src="../tour/img/${tdto.temp[i]}" width="150" height="150">
 
				</c:forEach> --%>
		
				<!-- tdto.file => 배열 while 구문 --> 
				<c:if test="${tdto.temp2!=''}">
				<c:forEach items="${tdto.temp}" var="my">					
					<img src="img/${my}" width="100" onclick="zoom(this.src)">
				</c:forEach>
				</c:if>
				<c:if test="${tdto.temp2==''}">
				이미지 없음
				</c:if>
			</td>
		</tr>
		<tr>
			<td height="400">내용</td>
			<td colspan="3">${tdto.content}</td>
		</tr>
		<tr>
			<td colspan="4" align="center"><a href="../tour/list.jsp">목록</a>
				<c:if test="${userid==tdto.userid}">
					<a href="../tour/update.jsp?id=${tdto.id}">수정</a>
					<a href="../tour/delete.jsp?id=${tdto.id}&fname=${tdto.temp2}" onclick="atest()">삭제</a>
				</c:if></td>
		</tr>

	</table>





</div>



<c:import url="../bottom.jsp" />