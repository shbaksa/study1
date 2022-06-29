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

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	
	String sql = "select * from board2 where id=?"; 
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	String pwd = rs.getString("pw");
		
	if(pwd.equals(pw))
	{
		%> <script>
		{
			window.opener.location.href= "readnum.jsp?id=<%=id%>&secret=1";
			window.close();
		}
		</script>
		<%
	}
	else
	{	
		response.sendRedirect("password.jsp?id="+id+"&chk=0");	 
	}
	
	conn.close();
	pstmt.close();
	rs.close();
		
%>
<body>

</body>
</html>