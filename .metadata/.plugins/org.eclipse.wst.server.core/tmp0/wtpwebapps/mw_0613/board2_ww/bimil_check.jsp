<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
	
	// request
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");	// 폼에 입력 비밀번호
	
	String sql = "select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	String dbpwd = rs.getString("pwd");
	// 쿼리생성
	
	if(pwd.equals(dbpwd)) {
		
		pstmt.close();
		conn.close();
		response.sendRedirect("readnum.jsp?id="+id);
	}
	else{
		%>	
		<script>
		alert("비밀번호 틀렸습니다");
		history.back();	
		</script>
	<%
	}
	%>	
	
	
		
	
	
	

</body>
</html>