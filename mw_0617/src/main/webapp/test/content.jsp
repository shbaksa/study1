<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
  		Connection conn=DriverManager.getConnection(db,"root","1234");
		// request id값
		String id = request.getParameter("id");
		
		// 쿼리생성
		String sql = "select * from gesipan where id=?";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		rs.next();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#del {
		visibility : hidden;
	}
	
	table {
		border-top : 1px solid black;
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
	#del_td {
		visibility : hidden;
	}
	
</style>
<script>
	function view(n) {
		
		if(n==0) {
			document.getElementById("del_td").style.visibility="visible";
			document.getElementById("del").style.visibility="visible";
			document.pkc.action="update.jsp";
			document.pkc.submit.value="수정";
		}
		
		else if(n==1) {
			document.getElementById("del_td").style.visibility="visible";
			document.getElementById("del").style.visibility="visible";
			document.pkc.action="delete.jsp";
			document.pkc.submit.value="삭제";
		}
		else if(n==2){
			location="list.jsp";
		}
		
	}
</script>
</head>
<body>
	
	
	<table width="800" height="520" align="center">
	<caption><h1>자유게시판</h1></caption>
	<tr align="center" style="background:lightgray;">
	<td height="40" style="border-top:none;"><h4>제목</h4></td> <!-- 6 -->
	<td width="320" style="border-top:none;"> <%=rs.getString("title") %> </td>
	<td style="border-top:none;"><h4>작성일</h4></td>
	<td style="border-top:none;"> <%=rs.getString("writeday") %></td>
	<td width="60" style="border-top:none;"><h4>조회수</h4></td>
	<td width="60" style="border-top:none;"> <%=rs.getString("readnum") %></td>
	</tr>
	<tr>
	<td height="40" align="center" ><h4>이메일</h4></td> <!-- 4 -->
	<td colspan="2" width="100"><%=rs.getString("mail") %></td>
	<td align="center"><h4>작성자</h4></td>
	<td colspan="2" width="200"><%=rs.getString("name") %></td>
	</tr>
	<tr>
	<td colspan="1" height="400" width="80" align="center"> <h4>내용</h4></td> <!-- 2 -->
	<td colspan="5"><%=rs.getString("content").replace("\r\n","<br>") %></td>
	</tr>
	<tr> <!-- 3 -->
	<td colspan="1" height="40" width="100" align="left" style="border-bottom:1px solid black; border-right: none;">
	<input type="button" onclick="view(0)" value="수정">
	<input type="button" onclick="view(1)" value="삭제"></td>
	<td colspan="4" style="border-bottom:1px solid black; border-right:none;" > 비고 </td>
	<td align="right" colspan="1" width="60" style="border-bottom:1px solid black;">
	<input type="button" onclick="view(2)" value="목록"></td>
	</tr>	
	<tr>
	<td id="del_td" colspan="6" align="center" style="border-top:hidden;">
	<form name="pkc" id="del" method="post" action="">
	<input type="hidden" name="id" value="<%=id%>">	
	<h4>비밀번호</h4> <input type="password" name="pwd">
	<input type="submit" name="submit" value="">
	</form>
	
	</td>
	</tr>
	</table>
	
</body>
</html>

<% // close 
	rs.close();
	pstmt.close();
	conn.close();
%>