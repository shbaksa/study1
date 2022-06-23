<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");
		
		// 쿼리생성
		String sql = "select * from upload";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 쿼리실행 
		ResultSet rs = pstmt.executeQuery();
	
	%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* table{
		border : 1px solid black;
		
	}
	tr,td {
		border-right: 1px solid black;
		border-bottom : 1px solid black;
	}
	tr:last-child > td {
		border-right : none;
		border-bottom : none;
	} */
	table {
		border-collapse : collapse;
	}
	td {
		border : 1px solid black;
	}
	tr:last-child > td {
		border : none;		
	}
	a{
		
		color : black;
		text-decoration:none;
	}
	#aa {
		
		border : 1px solid black;
		color : black;
		text-decoration:none;
    }
    #aa:hover {
    	background : skyblue;
    }
    #pkc {
    	position : absolute;
    	left:300px;
    	top:200px;
    	visibility : hidden;
    }

</style>
<script>
	function view(my){
	
		// id="pkc"태그안에 있는 img 태그의 src속성에 그림파일을 준다
		// alert(my.src);
		document.getElementById("bb").src=my.src;
		// id="pkc" 태그를 보이게
		document.getElementById("pkc").style.visibility="visible";
	}
	function hide(my) {
		my.style.visibility="hidden";
	}
</script>
</head>
<body>
	<div id="pkc" onclick="hide(this)"><img width="400" id="bb"></div>
	
	<table width="500" align="center">
	<tr>
	<td>사 진</td>
	<td>제 목</td>
	<td>이 름</td>
	<td>조회수</td>
	<td>작성일</td>	
	</tr>
	<%while (rs.next()) { %>
	<tr> 
	<td><img onclick="view(this)" src="img/<%=rs.getString("fname") %>" width="40"></td> <!-- onclick="view(this)" onclick="view(this.src)" 둘다가능 -->
	<td><a href="readnum.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title") %></a></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("readnum") %></td>
	<td><%=rs.getString("writeday") %></td>
	</tr>
	<% } %>
	<tr>
	<td colspan="5" align="right"> <a id="aa" href="write.jsp"> 글쓰기 </a> </td>
	</tr>
	</table>

</body>
</html>
<%
rs.close();
pstmt.close();
conn.close();
%>