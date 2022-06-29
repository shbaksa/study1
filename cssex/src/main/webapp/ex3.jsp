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
		String db="jdbc:mariadb://localhost:3306/ex1";
		Connection conn = DriverManager.getConnection(db,"root","0000");
	
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		String sql = "insert into friends(name,address,phone)";
		sql=sql+"values(?,?,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,address);
		pstmt.setString(3,phone);
		
		pstmt.executeUpdate();
		
		sql = "select * from friends";
		pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		pstmt.executeUpdate();
		
		
		while(rs.next())
		{
		out.print(rs.getString("name")+" "+rs.getString("address")+" "+rs.getString("phone"));
		out.print("<p>");
		}
				
		
		rs.close();
		pstmt.close();
		conn.close();	

%>
	
<a href="ex1.jsp"> 뒤로가기 </a>

</body>
</html>