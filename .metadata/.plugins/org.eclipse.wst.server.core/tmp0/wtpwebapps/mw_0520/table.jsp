<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- table.jsp  -->
	<!-- 웹문서에 표 만들기 : table, tr(횡), td(열) -->
	<!-- 2행 2열 테이블 만들기  -->
	<table border="1" width="200" height="200">
		<tr>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td></td>
			<td></td>
		</tr>
		<p>
	</table>
	<hr>

	<table border="1" width="200" height="200">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>

	</table>
	<hr>
	<!-- 2번과 3번 합치기 -->
	<table border="1" width="200" height="200">
		<tr>
			<td>1</td>
			<td colspan="2">
				<!--행합치기-->2
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
	</table>
	<hr>

	<!-- 1번과 4번 합치기 -->
	<table border="1" width="200" height="200">
		<tr>
			<td rowspan="2">
				<!--열합치기-->1
			</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
	</table>
	<hr>
	<table border="1" width="200" height="200">
		<tr>
			<!-- 1행 -->
			<td>1</td>
			<td>2</td>
			<td colspan="3">3</td>
		</tr>
		<tr>
			<!-- 2행 -->
			<td rowspan="2">4</td>
			<td>5</td>
			<td>6</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<!-- 3행 -->
			<td>7</td>
			<td>8</td>
			<td colspan="3">5</td>
		</tr>
		<tr>
			<!-- 4행 -->
			<td colspan="2" rowspan="2">7</td>
			<td>9</td>
			<td>5</td>
			<td rowspan="2">6</td>
		</tr>
		<tr>
			<!-- 5행 -->
			<td>8</td>
			<td>9</td>
		</tr>
	</table>
	<hr>
	<table border="1" width="200" height="200">
		<tr>
			<td>1</td>
			<td rowspan="3">2</td>
			<td>3</td>
		</tr>
		<tr>
			<td rowspan="2">4</td>

			<td rowspan="2">6</td>
		</tr>
		<tr>
		</tr>
	</table>
	<hr>



</body>
</html>