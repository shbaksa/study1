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
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request
	String bid = request.getParameter("bid"); // board2테이블의 id값
	String id = request.getParameter("id"); // dat id값
	// 쿼리생성
	String sql = "select * from board2 where id=?";
	String sql1 = "select * from dat where id=?";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	PreparedStatement ps = conn.prepareStatement(sql1);
	ps.setString(1, id);
	
	// 쿼리실행 => resultset
	ResultSet rs =  pstmt.executeQuery();
	rs.next();	
	ResultSet r = ps.executeQuery();
	r.next();
	
	
	
	%>







</head>
<body>

<form name="pkc" id="dat" method="post"  align="center" action="dat_update.jsp" >
	<input type="text" name="id" value=<%=id %>>
	<input type="text" name="bid" value=<%=bid %>>
	<input type="password" name="pwd" placeholder="비밀번호" size="5">
	<input type="submit" name="cst" value="입력"  >
	</form>
	<script>
	
		
			
	</script>
</body>
</html>