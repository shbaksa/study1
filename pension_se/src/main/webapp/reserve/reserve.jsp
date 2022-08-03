<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dao.ReserveDao" %>
<%
	ReserveDao rdao = new ReserveDao();
	rdao.getCalendar(request);
	rdao.getRoom(request);
%>
 <!-- 복사폼.jsp -->    
<c:import url="../top.jsp"/>
<style>
#section{
	width:1100px;
	height:500px;
	margin:auto;
}
#section table{
	border-collapse: collapse;
}
#section table td{
	border:1px solid green;
}

</style>
   	   
   <div id="section">
   
   <table width="1000"	align="center">
   <caption>
   <h2>
   <c:if test="${m==1}">
   <input type="button" onclick="location='../reserve/reserve.jsp?y=${y-1}&m=12'" value="←">
   </c:if>
   <c:if test="${!(m==1)}">
   <input type="button" onclick="location='../reserve/reserve.jsp?y=${y}&m=${m-1}'" value="←">
   </c:if>
   
   
    ${y}년 ${m}월
    
    <c:if test="${m==12}">
    <input type="button" onclick="location='../reserve/reserve.jsp?y=${y+1}&m=1'" value="→">
   </c:if>
   <c:if test="${!(m==12)}">
   <input type="button" onclick="location='../reserve/reserve.jsp?y=${y}&m=${m+1}'" value="→">
   </c:if>
   
   
   </h2></caption>
   <tr>
   <td>일</td>
   <td>월</td>
   <td>화</td>
   <td>수</td>
   <td>목</td>
   <td>금</td>
   <td>토</td>
   </tr>
   
   <c:set var="day" value="1"/>
   <c:forEach var="i" begin="1" end="6">
   <tr>
   
   	<c:forEach var="j" begin="0" end="6">
   	
   		<c:if test="${ ( j<yoil && i==1 )  || chong < day }">  		
   		<td>&nbsp;</td>
   		</c:if>
   		
   		<c:if test="${ ((j >= yoil && i==1) || i>1) && chong >= day }">   		
   		<td width="140" height="140"> ${day}<p>
   		<% 
   			String d = pageContext.getAttribute("day").toString();
   			String y = request.getAttribute("y").toString();
   			String m = request.getAttribute("m").toString();
   			
   			rdao.getCheck(request,y,m,d);	
   		%>
   		<c:if test="${tt==1}">
   		
   		<c:forEach var="rdto" items="${rlist}">
   		<c:set var="bang_id" value="${rdto.id}"/>
   		<%
   			String bang_id = pageContext.getAttribute("bang_id").toString();
   			rdao.getEmpty(request,y,m,d,bang_id);
   		%>
   		<c:if test="${cnt==0 }">
   		<a href="../reserve/reserve_next.jsp?y=${y}&m=${m}&d=${day}&id=${rdto.id}">${rdto.bang}</a><br>
   		</c:if>
   		<c:if test="${cnt==1 }">
   		<span style="color:red;text-decoration:line-through;">${rdto.bang}</span><br>
   		</c:if>
   		</c:forEach>
   		
   		
   		
   		</c:if>
   	
   		</td>
   		<c:set var="day" value="${day+1}"/>
   		</c:if>
   	
   	
   	
   	</c:forEach>
   
   </c:forEach>
   
   
   
   
   </table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>