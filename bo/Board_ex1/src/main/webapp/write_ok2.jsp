<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

 <%@ page import="java.sql.*" %>
<%
	
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");

	String name = "admin0";
	String title = "test0";
	String content = "content0";
	String area = "2";
	String secret = "1";
	String pw = "123";
	
	for(int i =51; i<=200; i++){
	
		String sql = "insert into board2(name,title,pw,content,area,secret,readnum,writeday,gv,gvdown) value(?,?,?,?,?,?,0,now(),0,0)"; 
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,name+i);
	pstmt.setString(2,title+i);
	pstmt.setString(3,pw);
	pstmt.setString(4,content+i);
	pstmt.setString(5,area);
	pstmt.setString(6,secret);
	
	pstmt.executeUpdate();
	
	
	pstmt.close();
	}
	conn.close();	

%>
<body>

</body>
</html>