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

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String area = request.getParameter("area");
	String secret = request.getParameter("secret");
	String pw = request.getParameter("pw");
	
	String sql = "insert into board2(name,title,pw,content,area,secret,readnum,writeday,gv,gvdown) value(?,?,?,?,?,?,0,now(),0,0)"; 
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,name);
	pstmt.setString(2,title);
	pstmt.setString(3,pw);
	pstmt.setString(4,content);
	pstmt.setString(5,area);
	
	
	if(pw.equals("") || name.equals("") || title.equals("") || content.equals("") || area == null)
	{
		response.sendRedirect("write.jsp?nopw=1");
	}
	else{
	if(secret == null)
	{
		secret = "1";
	}
	else
	{
		secret = "0";
	}
	pstmt.setString(6,secret);
	
	pstmt.executeUpdate();
	
	conn.close();
	pstmt.close();
	
	response.sendRedirect("list.jsp?pag=1");
	}
%>
<body>

</body>
</html>