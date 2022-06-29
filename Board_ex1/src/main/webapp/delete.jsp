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
	
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String secret_1 = request.getParameter("secret");
	String pw = request.getParameter("pw");
	
	String sql = "select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	ResultSet rs= pstmt.executeQuery();
	rs.next();
	
	String pwd = rs.getString("pw");
	
	if(pwd.equals(pw))
	{
		sql = "delete from board2 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);	
		pstmt.executeUpdate();
	
		sql = "alter table board2 auto_increment = 1;  set @count = 0; update board2 set board2.id = @count:=@count+1";
	 	pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();	
		
		
		pstmt.close();
		conn.close();
		rs.close();
				
		response.sendRedirect("list.jsp");
	}
	else
	{
		response.sendRedirect("content.jsp?id="+id+"&chk=0");
	}
	
	%>
</body>
</html>