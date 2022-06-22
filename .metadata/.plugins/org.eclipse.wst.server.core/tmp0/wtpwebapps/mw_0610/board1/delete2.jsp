<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	String sql = "select * from board1 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	String dbpwd = rs.getString("pwd");
	
	if(pwd.equals(dbpwd)){	
	// 쿼리 실행
	String sql1="delete from board1 where id=?";
	// 심부름꾼 생성
	PreparedStatement pstmt1 = conn.prepareStatement(sql1);
	pstmt1.setString(1, id);
	// 쿼리 실행
	pstmt1.executeUpdate();
	// close();
	pstmt1.close();
	response.sendRedirect("list.jsp");
	}
	else {
		%>
		<script>
			alert("비밀번호 아님");
			history.back();
		</script>
		<%
		}
		%>