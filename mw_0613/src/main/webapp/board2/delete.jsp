<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>

	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql = "select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	String dbpwd = rs.getString("pwd");
	
	if(pwd.equals(dbpwd)) {
		
		String sql1 = "delete from board2 where id=?";
		PreparedStatement pstmt1 = conn.prepareStatement(sql1);
		pstmt1.setString(1, id);
		pstmt1.executeUpdate();
		
		pstmt1.close();
		conn.close();
		response.sendRedirect("list.jsp");
	}
	else {
		
		response.sendRedirect("content.jsp?chk=1&id="+id);
		
	}
	
	rs.close();
	pstmt.close();
	conn.close();
	%>

</body>
</html>