<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");

	String sql = "select * from sungjuk";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	%>
	<%

	%>
	<table width="1000" border="1">
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>합</td>
			<td>평균</td>
			<td>수정</td>
			<td>삭제</td>
		</tr>
		<%
		int hap1 = 0;
		int avg1 = 0;
		int i = 0;
		%>
		<%
		while (rs.next()) {
			int kor = Integer.parseInt(rs.getString("kor"));
			int eng = Integer.parseInt(rs.getString("eng"));
			int mat = Integer.parseInt(rs.getString("mat"));
			int hap = kor + eng + mat;
			int avg = hap / 3;
			hap1 = hap1 + hap;
			i++;
			avg1 = avg1 + avg;
		%>
		<tr>
			<td><%=rs.getString("hakbun")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("kor")%></td>
			<td><%=rs.getString("eng")%></td>
			<td><%=rs.getString("mat")%></td>
			<td><%=hap%></td>
			<td><%=avg%></td>
			<td><a href="update.jsp?hakbun=<%=rs.getString("hakbun")%>">수정</a>
			</td>
			<td><a href="delete.jsp?hakbun=<%=rs.getString("hakbun")%>">삭제</a>
			</td>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="4"></td>
			<td colspan="1" align="right">총합</td>
			<td colspan="1"><%=hap1%></td>
			<td colspan="3" align="center"> 비고</td>
		</tr>
		<tr>
			<td colspan="5"></td>
			<td colspan="1" align="right">총평균</td>
			<td colspan="1"><%=avg1 / i%></td>
			<td colspan="1" align="right">총학생</td>
			<td colspan="1" ><%=i%></td>
		</tr>



		<tr>
			<td colspan="9" align="center"><a href="input.jsp">추가</a></td>
		</tr>


	</table>


</body>
</html>