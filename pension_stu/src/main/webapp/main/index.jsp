<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.GongjiDao"%>
<%@ page import="dao.TourDao"%>
<%@ page import="dao.BoardDao"%>

<%
// 공지사항
GongjiDao gdao = new GongjiDao();
gdao.getThree(request);

// 여행후기	
TourDao tdao = new TourDao();
tdao.getThree(request);

// 게시판
BoardDao bdao = new BoardDao();
bdao.getThree(request);
%>

<c:import url="../top.jsp" />
<style>
/* #fourth table {
	border-collapse: collapse;
}
#fourth table td{
	border:1px solid black;
}
 */
</style>

<div id="third">
	<img src="../img/main.jfif" width="1100" height="400">
</div>


<div id="fourth">
	<div id="gongji">
		공지사항
		<p>
		<table width="320" align="center">
			<c:forEach items="${glist}" var="gdto">
				<tr>
					<td width="220"><a href="../gongji/content.jsp?id=${gdto.id}">${gdto.title}</a></td>
					<td width="100">${gdto.writeday}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div id="tour">
		여행후기
		<p>
		<table width="320" align="center">
			<c:forEach items="${tlist}" var="tdto">
				<tr>
					<td width="220"><a href="../tour/readnum.jsp?id=${tdto.id}">${tdto.title}</a></td>
					<td width="100">${tdto.writeday}</td>
				<tr>
			</c:forEach>
		</table>
	</div>
	<div id="board">
		게시판
		<p>
		<table width="320" align="center">
			<c:forEach items="${blist}" var="bdto">
				<tr>
					<td width="220"><a href="../board/readnum.jsp?id=${bdto.id}">${bdto.title}</a></td>
					<td width="100">${bdto.writeday}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</div>


<div id="fifth">
	<div id="e1">이벤트 1</div>
	<div id="e2">이벤트 2</div>
	<div id="e3">이벤트 3</div>
	<div id="e4">이벤트 4</div>
	<div id="e5">이벤트 5</div>
</div>

<c:import url="../bottom.jsp" />
