<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// 쿼리생성
		String sql = "select * from qna order by grp desc , seq asc";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		
		
		
	%>
	<style>
		
		caption { 
			border-top : 1px solid black;
			border-bottom : 1px solid black;
			background : lightgray;
		}
		b {
			font-size : 64px;
		}
		
		tr:first-child > td {
			border-bottom : 1px solid black;
		}
		
		tr:last-child > td {
			border-bottom : 1px solid black;
			border-top : 1px solid black;
		}
		
	</style>

</head>
<body>

	<table width="1000" align="center">
	<caption><b>Q  n  A</b></caption>
	<tr align="center">
	<td>제 목</td>
	<td>이 름</td>
	<td>조회수</td>
	<td>작성일</td>
	<td>grp</td>
	<td>depth</td>
	<td>seq</td>
	</tr>
	<% while(rs.next()) {
		String str=""; 
		if(rs.getInt("depth")!= 1) {
			
			for(int i=1;i<rs.getInt("depth");i++){
				str=str+"&nbsp;&nbsp;";
			}
			
			str=str+"ㄴ";
			// depth 의 크기만큼 빈칸을 추가 => &nbsp;
		
		}
		%>
	<tr>
	<td><%=str %><a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("readnum") %></td>
	<td><%=rs.getString("writeday") %></td>
	<td><%=rs.getInt("grp") %></td>
	<td><%=rs.getInt("depth") %></td>
	<td><%=rs.getInt("seq")%></td>
	<td></td>
	</tr>
	<% } %>
	<tr>
	<td colspan="7" align="center" onclick="location='write.jsp'"> <input type="submit" value="글쓰기"></td>
	</tr>
	</table>

</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>