<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>


<%@ page import="java.sql.*" %>
	
	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
  		Connection conn=DriverManager.getConnection(db,"root","1234");
		
  		String sql = "set @count=0";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		
		sql = "update gesipan set id=@count:=@count+1";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
  		
		// 쿼리생성
		sql = "select * from gesipan";
		pstmt = conn.prepareStatement(sql);
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		
		
		
		
	
	%>
	<style>
	table {
		border-top : 1px solid black;
		font-size : 13px;
		border-left : none;
		border-right : none;
		border-bottom : none;
	}
	td {
		border-right : 1px solid black;
		border-top : 1px solid black;
	}
	td:last-child {
		border-right : none;
	}
	tr {
		border-top : 1px solid black;
		border-bottom : 1px solid black;
	}
	</style>
</head>
<body>

	<table width="800" height="500" align="center">
	<caption> <h1>게시판목록</h1> </caption>
	<tr align="center" style="background:lightgray;">
	<td style="border-top:none;" width="100"><b>작성자</b></td>
	<td style="border-top:none;" width="500"><b>제 목</b></td>
	<td style="border-top:none;" width="80"><b>조회수</b></td>
	<td style="border-top:none;" width="120"><b>작성일</b></td>	
	</tr>
	<%while(rs.next()) { %>
	<tr>
	<td><%=rs.getString("name") %></td>
	<td onclick="location='readnum.jsp?id=<%=rs.getInt("id")%>'"><%=rs.getString("title") %></td>
	<td align="center"><%=rs.getString("readnum") %></td>
	<td align="center"><%=rs.getString("writeday") %></td>
	</tr>
	<% } %>
	<tr>
	<td colspan="4" align="center"><form method="post" action="write.jsp"> <input type="submit" value="글쓰기"> </form></td>
	</tr>
	</table>
	
	
</body>
</html>


<% 
rs.close();
pstmt.close();
conn.close();
%>
