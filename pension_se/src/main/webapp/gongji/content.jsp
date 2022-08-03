<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dao.GongjiDao" %>
<%
	GongjiDao gdao = new GongjiDao();
	gdao.content(request);
%>
 <!-- 복사폼.jsp -->    
<c:import url="../top.jsp"/>
<style>
#section{
	width:1100px;
	height:500px;
	margin:auto;
}

</style>
   	   
   <div id="section">
   	
   	<table width="700" align="center">
   	<tr>
   	<td>제목</td>
   	<td colspan="3">${gdto.title}</td>
   	</tr>
   	<tr>
   	<td>작성자</td>
   	<td>관리자</td>
   	<td>작성일</td>
   	<td>${gdto.writeday}</td>
   	</tr>
   	<tr>
   	<td>내용</td>
   	<td colspan="3">${gdto.content}</td>
   	</tr>
   	<tr>
   	
   	<td colspan="4">
   	<a href="../gongji/list.jsp">목록</a>
   <%-- 	<c:if test="${userid == 'admin'}"> --%>
   	<a href="../gongji/update.jsp?id=${gdto.id}">수정</a>
   	<a href="../gongji/delete.jsp?id=${gdto.id}">삭제</a>
  <%--  	</c:if> --%>
   	</td>
   	
   	
   	
   	
   	</table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>