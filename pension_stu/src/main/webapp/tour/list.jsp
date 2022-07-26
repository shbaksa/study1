<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.TourDao"%>

<%
TourDao tdao = new TourDao();
tdao.list(request);
%>
<!-- tour/list_.jsp -->
<c:import url="../top.jsp" />


<div id="tour_list_section">

	
	<table width="900" align="center">
		<caption>
			<h2>여 행 후 기</h2>
		</caption>
		<tr>
			<td width="50">작성자</td>
			<td width="400">제 목</td>
			<!-- <td width="70">사 진</td> -->
			<td width="70"> 사진갯수 </td>
			<td width="50">조회수</td>
			<td width="80">작성일</td>
		</tr>

		<c:forEach items="${list}" var="tdto">
			<tr>
				<td>${tdto.userid}</td>
				<td><a href="../tour/readnum.jsp?id=${tdto.id}">${tdto.title}</a></td>
				<%-- <td><img src="../tour/img/${tdto.fname}" width="50" height="50"></td> --%>
				<c:if test="${tdto.firstimg!=''}">
				<td><img src="../tour/img/${tdto.firstimg}" width="30" height="30">외${tdto.cnt-1}개</td>
				</c:if>
				<c:if test="${tdto.firstimg==''}">
				<td>X</td>
				</c:if>
				<td>${tdto.readnum}</td>
				<td>${tdto.writeday}</td>
			</tr>
		</c:forEach>
		<c:if test="${userid!=null}">
			<tr>
				<td colspan="5" align="center"><a href="../tour/write.jsp">글작성</a></td>
			</tr>
		</c:if>
	</table>
	
</div>



<c:import url="../bottom.jsp" />