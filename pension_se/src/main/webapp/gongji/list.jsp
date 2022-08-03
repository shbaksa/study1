<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import = "dao.GongjiDao" %>
<%
	GongjiDao gdao = new GongjiDao();
	gdao.list(request);
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
   		<caption><h2>공 지 사 항</h2></caption>
   		<tr>
   		<td>제목</td>
   		<td>작성자</td>
   		<td>작성일</td>  		
   		</tr>
   		<c:forEach items="${glist}" var="gdto">
   		<tr>
   		<td><a href="../gongji/content.jsp?id=${gdto.id}">${gdto.title}</a></td>
   		<td>관리자</td>
   		<td>${gdto.writeday}</td>
   		</c:forEach>
   		
   		<tr>
   		<td colspan="3"><a href="../gongji/write.jsp">글쓰기</a></td>
   		</tr>
   		
   		
   		
   		</table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>