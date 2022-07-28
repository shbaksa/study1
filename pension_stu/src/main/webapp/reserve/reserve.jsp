<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="dao.ReserveDao"%>
<%
ReserveDao rdao = new ReserveDao();
// 달력 => 1일의 요일, 총일수, 몆주
rdao.getCalendar(request);
rdao.getRoom(request);
%>
<!-- reserve/reserve.jsp -->
<c:import url="../top.jsp" />
<style>
#section {
	width: 1100px;
	margin: auto;
}

#section table {
	border-collapse: collapse;
}

#section table tr {
	height: 100px;
}

#section table td {
	border: 1px solid black;
}

#disp div {
	display: inline-block;
}

.rightBtn {
	border: 1px solid black;
	width: 25px;
	height: 40px;
	padding-top: 15px;
}

.rightBtn:hover {
	background: #cccccc;
}

.leftBtn {
	border: 1px solid black;
	width: 25px;
	height: 40px;
	padding-top: 15px;
}

.leftBtn:hover {
	background: #cccccc;
}
</style>

<div id="section">
	<table width="1000" align="center">
		<caption>
			<b style="font-size: 24px;">${y}년 ${m}월</b>
		</caption>
		<tr id="disp">
			<th rowspan="7" ><c:if test="${ !(m==1) }">
					<!-- 1월이 아닐경우 -->
					<a href="../reserve/reserve.jsp?y=${y}&m=${m-1}"><div class="rightBtn">←</div> </a>
				</c:if> <c:if test="${ m==1 }">
					<!-- 1월 -->
					<a href="../reserve/reserve.jsp?y=${y-1}&m=12"><div class="rightBtn">←</div> </a>
				</c:if></th>

			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>

			<th rowspan="7" width="40"><c:if test="${ !(m==12) }">
					<!-- 12월이 아닐경우 -->
					<a href="../reserve/reserve.jsp?y=${y}&m=${m+1}"><div class="leftBtn">→</div> </a>
				</c:if> <c:if test="${ m==12 }">
					<!-- 12월 -->
					<a href="../reserve/reserve.jsp?y=${y+1}&m=1"><div class="leftBtn">→</div> </a>
				</c:if></th>
		</tr>

		<c:set var="day" value="1" />

		<c:forEach var="i" begin="1" end="6">
			<!-- 행 -->
			<tr>
					<c:forEach var="j" begin="0" end="6">
						<!-- 열 -->
						<c:if test="${ (j < yoil && i==1) || (chong < day)}">
							<td>&nbsp;</td>
						</c:if>

						<c:if test="${ ((j >= yoil && i==1) || i>1 ) &&  (chong >= day) }">
							<td  width="140" height="140">${day}<p>
									<!-- td에 출력되는 날짜가 오늘 이전인지 이후인지를 체크 -->
									<%
									// 년,월은 requset 영역, 일은 pageContext => 스크립트릿변수
									String y = request.getAttribute("y").toString();
									String m = request.getAttribute("m").toString();
									String d = pageContext.getAttribute("day").toString();
									String dday = y + "-" + m + "-" + d;

									rdao.getCheck(y,m,d,request);
									%>
									<c:if test="${tt==1}">
									
									<!-- 방의 이름을 출력 -->

									<c:forEach items="${rlist}" var="rdto">

										<!-- 방의 예약여부를 확인 => dao메소는 (년,월,일,방id) -->
										<c:set var="bang_id" value="${rdto.id }" />
										<%
										String bang_id = pageContext.getAttribute("bang_id").toString();
										rdao.getEmpty(dday, bang_id, request);
										%>
										<!-- request영역의 cnt변수의 값이 1이면 예약불가, 0이면 예약가능 -->
										<c:if test="${cnt==0}">
											<a
												href="../reserve/reserve_next.jsp?y=${y}&m=${m}&d=${day}&id=${rdto.id}">${rdto.bang}</a>
											<br>
										</c:if>

										<c:if test="${cnt==1}">
											<span style="color: red;text-decoration:line-through;">${rdto.bang}</span>
											<br>
										</c:if>

									</c:forEach>
										</c:if>
									<!-- 방목록 출력 --></td>

					
						<!-- 날짜값을 1씩 증가 -->

						<c:set var="day" value="${day+1}" />
				</c:if>
		</c:forEach>

		</tr>

		</c:forEach>


	</table>

</div>



<c:import url="../bottom.jsp" />