<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
</head>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

 	request.setCharacterEncoding("UTF-8");
 	String[] num = request.getParameterValues("choice");
 	
 	for(int i=0; i < num.length; i++)
 	{
 		
 		String sql = "delete from board1 where UID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,num[i]);
		pstmt.executeUpdate();
 	
 	}

 	String sql = "alter table board1 auto_increment =1; set @count=0; update board1 set board1.UID = @count:=@count+1;";
 	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	
	response.sendRedirect("list.jsp");
 	

%>
<body>

</body>
</html>