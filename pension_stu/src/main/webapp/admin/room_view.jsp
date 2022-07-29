<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="dao.AdminDao"%>
<%
AdminDao adao = new AdminDao();
adao.room_view(request);
%>
<!-- admin/room_view.jsp -->
<c:import url="../top.jsp" />
<style>
#section {
	width: 1100px;
	height: 500px;
	margin: auto;
}
#content_layer{
	position:absolute;
}
</style>
<script>
var k = 0;
function content_view(id){
	var y = event.pageY;
	var x = event.pageX;
	var chk = new XMLHttpRequest();
	chk.open("get","content_view.jsp?id="+id);
	chk.send();
	chk.onreadystatechange=function(){
		
		if(chk.readyState==4){
			//alert(chk.responseText);
			if(k==0){
			document.getElementById("content_layer").style.display="block";
			document.getElementById("content_layer").innerHTML=chk.responseText;
			document.getElementById("content_layer").style.top=y+"px";
			document.getElementById("content_layer").style.left=x+"px";
			k=1;
			}
		}
	}
}

function content_hide(){
	
	//alert(k);
	if(k==1){
		document.getElementById("content_layer").style.display="none";
		k=0;
	}
	
	
}

</script>
<div id="content_layer"></div>

<div id="section">
	
	<table width="700" align="center">
	<caption><h2>객 실 현 황</h2></caption>
		<tr align="center">
			<td>방이름</td>
			<td>최소인원</td>
			<td>최대인원</td>
			<td>1박 가격</td>
			<td>상 태</td>
			<td>수 정</td>
			<td>삭 제</td>
		</tr>
		<c:forEach items="${rlist}" var="rdto">
			<tr align="center">
				<td onmouseover="content_view(${rdto.id})" onmouseout="content_hide()">${rdto.bang}</td>
				<td>${rdto.min}</td>
				<td>${rdto.max}</td>
				<td><fmt:formatNumber value="${rdto.price}"/>원</td>				
				<c:if test="${rdto.state == 0}">
					<td>정상운영</td>			
				</c:if>
				<c:if test="${rdto.state == 1}">
					<td>공사중</td>
				</c:if>
				<td><input type="button" value="수 정"></td>
				<td><input type="button" value="삭 제"></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="7" align="center"><input type="button" value="객실추가"></a></td>
		</tr>
	</table>
	
</div>



<c:import url="../bottom.jsp" />