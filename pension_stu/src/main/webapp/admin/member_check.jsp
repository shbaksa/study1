<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dao.AdminDao" %>
<%
	AdminDao adao = new AdminDao();
	adao.member_check(request);

%>
 <!-- admin/member_view.jsp -->    
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
   	<caption><h2>회 원 목 록</h2></caption>
   	<tr>
   	<td>아이디</td>
   	<td>이 름</td>
   	<td>번 호</td>
   	<td>가입일</td>
   	<td>상 태</td>
   	<td>비 고</td>
   	</tr>
   	
   	<c:forEach items="${mlist}" var="mdto">
   	<tr>
   	<td>${mdto.userid}</td>
   	<td>${mdto.name}</td>
   	<td>${mdto.phone}</td>
   	<td>${mdto.writeday}</td>
   	
   	<c:if test="${mdto.state == 0}">
   		<td>정상회원</td>
   		<td>&nbsp;</td>
   	</c:if>
   	<c:if test="${mdto.state == 1}">
   		<td style="color:blue;">탈퇴신청중</td>
   		<td><input type="button" onclick="location='../admin/member_state.jsp?id=${mdto.id}'" value="수정"></td>
   	</c:if>
   	<c:if test="${mdto.state == 2}">
   		<td style="color:red;text-decoration:line-through;">탈퇴회원</td>
   		<td>&nbsp;</td>
   	</c:if>
   	
   	
   
   	</tr>
   	

   	</c:forEach>
   	
   	
   	
   	
   	
   	
   	
   	</table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>