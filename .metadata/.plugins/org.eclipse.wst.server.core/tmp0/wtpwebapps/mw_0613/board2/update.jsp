<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	table {
		border : 1px solid black;
		border-spacing : 0px;
	}
	td {
		border : 1px solid black;
		</style>
<%
	// 하나의 레코드를 읽어와서 아래의 폼에 넣어준다.
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request 
	String id= request.getParameter("id");
	
	// 쿼리작성
	String sql="select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	// 폼에 출력
	
	%>
<script>

	function init()
	{
		// radio
		document.pkc.area[<%=rs.getInt("area")%>].checked=true;
		// checkbox
		// if (<%=rs.getInt("bimil")%> == 1)
		// document.pkc.bimil.checked=true;
		
		<% // 값 자체를 출력안되게 하고자 할때
		if(rs.getInt("bimil") == 1) {
		%>	
			document.pkc.bimil.checked=true;
		<%
		}
		%>
		<%
		if(request.getParameter("chk") != null) // update_ok에서 이동시 chk값이 존재한다.
		{
		%>		
		alert("비밀번호가 틀렸습니다");	
		<%		
		}
		%>
	}
	
</script>
</head>
<body onload="init()">
	
		
	<form name="pkc" method="post" action="update_ok.jsp">
	<input type="hidden" name="id" value="<%=id%>">
	<table width="auto" align="center" > 
	<caption><h2> 게시판 글쓰기 </h2></caption>
	<tr>
	<td > 제 목</td>
	<td> <input type="text" name="title" size="40" value="<%=rs.getString("title") %>"></td>

	</tr>
	<tr>
	<td > 이 름</td>
	<td><input type="text" name="name" size="6" value="<%=rs.getString("name") %>"></td>
	
	</tr>
	<tr>
	<td > 내 용</td>
	<td><textarea cols="80" rows="5" name="content"><%=rs.getString("content") %></textarea></td>
	
	</tr>
	<tr>
	<td > 비 번</td>
	<td><input type="password" name="pwd" size="6"></td>
	</tr>
	<tr>
	<td > 지 역</td> <!-- DB에  0~4까지의 값이 저장되어 있다.. rs.getString("area")의 값에 따라 다르게 체크-->
	<td> <input type="radio" name="area" value="0">서울
	<input type="radio" name="area" value="1">경기
	<input type="radio" name="area" value="2">강원
	<input type="radio" name="area" value="3">충청
	<input type="radio" name="area" value="4">전라
	<input type="radio" name="area" value="5">경상
	<input type="radio" name="area" value="6">제주
	</td>	
	</tr>
	<tr>
	<td > <input type="checkbox" name="bimil" value="1"> 체크하시면 해당글은 비밀글이 됩니다.</td>
	</tr>
	<tr>
	<td > <input type="submit" value="글쓰기"></td>
	</tr>
	</table>
	</form>

</body>
</html>
<%
//close
rs.close();
pstmt.close();
conn.close();

%>