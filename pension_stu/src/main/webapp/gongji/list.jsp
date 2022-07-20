<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.GongjiDao"%>
<%
GongjiDao gdao = new GongjiDao();
gdao.list(request);
%>
<!-- Gongji/list.jsp -->

<c:import url="../top.jsp" />

<div id="gongji_list_section">

	<table width="700" align="center">
		<caption>
			<h2>공지사항</h2>
		</caption>
		<tr>
			<td width="500">제목</td>
			<td width="80">작성자</td>
			<td width="100">작성일</td>
		</tr>

		<c:forEach items="${list}" var="gdto">
			<tr>
				<c:set var="gongji_list_str" value="" />
				<c:set var="gongji_list_img" value="" />
				<c:if test="${gdto.gubun==1}">
					<!-- 항상 보여야하는  공지사항 색칠하기 -->
					<c:set var="gongji_list_str" value="style='background:#cccccc'" />
					<c:set var="gongji_list_img"
						value="<img src='../img/gg.png' width='20'>" />
				</c:if>
				<td ${gongji_list_str} align="left">${gongji_list_img}<a
					href="../gongji/content.jsp?id=${gdto.id}">${gdto.title}</a></td>
				<td ${gongji_list_str}>관리자</td>
				<td ${gongji_list_str}>${gdto.writeday}</td>


				<%-- <c:if test="${gdto.gubun==1}">
				<td style="background:#cccccc" align="left"><img src='../img/gg.png' width='20'>${gdto.title}</td>
				<td style="background:#cccccc">관리자</td>
				<td style="background:#cccccc">${gdto.writeday}</td>
				</c:if>
				
				<c:if test="${gdto.gubun==0}">
				<td align="left">${gdto.title}</td>
				<td>관리자</td>
				<td>${gdto.writeday}</td>
				</c:if> --%>




			</tr>
		</c:forEach>

		<c:if test="${userid=='admin'}">
			<tr>
				<td colspan="3" align="center"><a href="../gongji/write.jsp">글작성</a></td>
			</tr>
		</c:if>

	</table>



</div>



<c:import url="../bottom.jsp" />