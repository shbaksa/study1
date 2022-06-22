<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border : 1px solid black;
		font-size : 13px;
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
		<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
  		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// request 
		request.setCharacterEncoding("utf-8");
		String pwd = request.getParameter("pwd");
		String id = request.getParameter("id");
		
		// 쿼리생성
		String sql = "select * from gesipan where id=?";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		String dbpwd = rs.getString("pwd");
		
		
		
		if(pwd.equals(dbpwd)){
		%>
			<form method="post" action="update_ok.jsp">
			<input type="hidden" name="id" value="<%=id %>">
		    <table  width="800" height="520" align="center">
			<caption><h1>글 수정 </h1></caption>						
			<tr align="center" style="background:lightgray;"> <!-- 2 -->
			<td height="40" width="100" style="border-top:none;" align="center"><h4>제목</h4></td> 
			<td width="320" style="border-top:none;" colspan="3" ><input type="text" name="title" placeholder="<%=rs.getString("title") %>">  </td>
			<tr> <!-- 4 -->
			<td align="center" > <h4>이름</h4></td>
			<td><input type="text" name="name" placeholder="<%=rs.getString("name") %>"></td>
			<td align="center"> <h4>이메일</h4></td>
			<td><input type="text" name="mail" placeholder="<%=rs.getString("mail") %>"></td>
			</tr>
			<tr> <!-- 2 -->
			<td align="center"><h4>내용 </h4> </td>
			<td colspan="3"><textarea cols="100" rows="25" name="content"> <%=rs.getString("content")%>  </textarea></td>
			</tr>
			<tr> <!-- 1 -->
			<td colspan="4" align="center">			
			<input type="submit" value="글저장" ></td>
			</tr>
			</table>
			</form>
		

		<%
		rs.close();
		pstmt.close();
		conn.close();
		
		}
		
		
		
		else {
			rs.close();
			pstmt.close();
			conn.close();
			response.sendRedirect("content.jsp?id="+id);
		}
		%>


		
		

</body>
</html>