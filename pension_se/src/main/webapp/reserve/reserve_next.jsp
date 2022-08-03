<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="dao.ReserveDao"%>
<%
ReserveDao rdao = new ReserveDao();
rdao.reserve_next(request);
%>
<%
rdao.getSuk(request);
%>
<!-- 복사폼.jsp -->
<c:import url="../top.jsp" />
<style>
#section {
	width: 1100px;
	height: 500px;
	margin: auto;
}
</style>
<script>

function total_price(){
	
	var ss = document.reser.suk.value;
	var ssprice = ss*${rdto.price};
	
	var ii = document.reser.inwon.value;
	ii = ii-${rdto.min};
	var iiprice = ii*20000;
	
	var cc = document.reser.charcoal.value;
	var ccprice = cc*20000;
	
	var bb = document.reser.bbq.value;
	var bbprice = bb*50000;
	
	var tot = ssprice+iiprice+ccprice+bbprice;
	
	document.getElementById("suk").innerText = new Intl.NumberFormat().format(ssprice);
	document.getElementById("inwon").innerText = new Intl.NumberFormat().format(iiprice);
	document.getElementById("charcoal").innerText = new Intl.NumberFormat().format(ccprice);
	document.getElementById("bbq").innerText = new Intl.NumberFormat().format(bbprice);
	document.getElementById("total").innerText = new Intl.NumberFormat().format(tot);
	
	document.reser.total.value=tot;

	
}



</script>

<div id="section">
	<form name="reser" method="post" action="../reserve/reserve_ok.jsp">
	<input type="hidden" name="ymd" value="${ymd}">
	<input type="hidden" name="bang_id" value="${rdto.id}">
	<input type="hidden" name="total" value="${rdto.price}">
		<table width="700" align="center">


			<caption>
				<h2>${rdto.bang}예약정보</h2>
			</caption>

			<tr>
				<td>입실일</td>
				<td>${ymd}</td>
				<td>숙박일수</td>
				<td><select name="suk" onchange="total_price()">

						<c:forEach var="i" begin="1" end="${chk}">

							<option value="${i}">${i}박</option>

						</c:forEach>

				</select></td>
			</tr>

			<tr>
				<td>기준인원</td>
				<td>(${rdto.min}/${rdto.max})</td>
				<td>입실인원</td>
				<td><select name="inwon" onchange="total_price()">
						<c:forEach var="i" begin="${rdto.min}" end="${rdto.max}">
							<option value="${i}">${i}명</option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td>숯패키지</td>
				<td><select name="charcoal" onchange="total_price()">
						<option value="0">선택안함</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
						<option value="4">4개</option>
						<option value="5">5개</option>
				</select></td>
				<td>bbq</td>
				<td><select name="bbq" onchange="total_price()">
						<option value="0">선택안함</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
						<option value="4">4개</option>
						<option value="5">5개</option>
				</select></td>
			</tr>
			<tr>
				<td>숙박 가격</td>
				<!-- jstl onload -->
				<td colspan="3"><span id="suk"><fmt:formatNumber
							value="${rdto.price}" type="number" /></span>원</td>
			</tr>
			<tr>
				<td>인원 추가</td>
				<td colspan="3"><span id="inwon">0</span>원</td>
			</tr>
			<tr>
				<td>숯패키지</td>
				<td colspan="3"><span id="charcoal">0</span>원</td>
			</tr>
			<tr>
				<td>bbq재료</td>
				<td colspan="3"><span id="bbq">0</span>원</td>
			</tr>
			<tr>
				<td>총 가격</td>
				<td colspan="3"><span id="total"><fmt:formatNumber
							value="${rdto.price}" type="number" /></span>원</td>
			</tr>
			<tr>
				<td colspan="4"><input type="submit" value="예약하기"></td>
			</tr>












		</table>







	</form>



</div>



<c:import url="../bottom.jsp" />