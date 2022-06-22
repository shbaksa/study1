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
		String sql = "select * from qna order by grp asc";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
	
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		
		String grp = request.getParameter("grp");
		
		sql = "select * from qna where grp=?";
		PreparedStatement pstmt1 = conn.prepareStatement(sql);
		pstmt1.setString(1, grp);
		ResultSet rs1 = pstmt1.executeQuery();
		
		
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
		
		.del {
			/* display : none; */
			visibility : hidden;
		}
	</style>
	<script>
		function view(n,) {
	
			document.getElementById("del"+n).style.visibility="visible";
		
		}
		
	</script>

</head>
<body>

	<table width="1000" align="center">
	<caption><b>Q  n  A</b></caption>
	<tr>
	<td>제 목</td>
	<td>이 름</td>
	<td>조회수</td>
	<td>작성일</td>
	<td>grp</td>
	<td>depth</td>
	<td>seq</td>
	</tr>
	<% while(rs.next()) { %>
	<tr>
	<% String str="";
	if (rs.getInt("depth")!=1 ) {
		for(int i=1; i<rs.getInt("depth");i++) {
			str=str+"&nbsp;&nbsp;";
		}
		str=str+"ㄴ";
	}%>
	<td><%=str %><a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a></td>
	<td onclick="view(<%=rs.getInt("id")%>)"><%=rs.getString("name") %></td>
	<td><%=rs.getString("readnum") %></td>
	<td><%=rs.getString("writeday") %></td>
	<td><%=rs.getInt("grp") %></td>
	<td><%=rs.getInt("depth") %></td>
	<td><%=rs.getInt("seq") %></td>
	</tr>
	<tr style="visibility:hidden;" class="del" id="del<%=rs.getInt("id")%>">
	<form method="post" action="write2.jsp">
	<input type="hidden" name="grp" value="<%=rs.getInt("grp")%>">
	<input type="hidden" name="depth" value="<%=rs.getInt("depth")%>">
	<input type="hidden" name="seq" value="<%=rs.getInt("seq")%>">
	<td><input type="text" name="title" placeholder="제목"></td>
	<td><input type="text" name="name" placeholder="작성자"></td>
	<td><input type="password" name="pwd" placeholder="비빌번호"></td>
	<td><input type="submit" value="댓글작성"><td>
	</form>
	</tr>
		<% while(rs1.next()) { %>
		<tr>
		<td><%=rs1.getString("title") %><td>
		<td><%=rs1.getString("name") %></td>
		<td><%=rs1.getString("readnum") %></td>
		<td><%=rs1.getString("writeday") %></td>
		</tr>

	<% 
	}}
	%>
	adsfadsfadsadsfadsfasdffadsfsad
	
	<%-- <% while(rs.next()) {%>
	<tr>
	<td><%=rs.getString("title") %></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("writeday") %></td>
	</tr>
	<% } %> --%>
	<tr>
	<td colspan="4" align="center" onclick="location='write.jsp'"> <input type="submit" value="글쓰기"></td>
	</tr>
	</table> 

</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>