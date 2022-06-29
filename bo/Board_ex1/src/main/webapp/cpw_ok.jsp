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
	String bbid = request.getParameter("bbid");
	String cpw = request.getParameter("cpw");
	String chk = request.getParameter("chk");
	
	
	String sql = "select * from comment where id=?"; 
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,bbid);
	pstmt.executeUpdate();
	
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	String pwd = rs.getString("cpw");
		
	if(chk.equals("0"))
	{
			
			if(pwd.equals(cpw))
			{
				response.sendRedirect("comment_re.jsp?id="+id+"&bbid="+bbid);	 
			}
			else
			{	
				response.sendRedirect("content.jsp?id="+id+"&secret=1&chk=0");	 
			}
	}
	else if(chk.equals("1"))
	
	{
		
		if(pwd.equals(cpw))
		{
			response.sendRedirect("comment_de.jsp?id="+id+"&bbid="+bbid);	 
		}
		else
		{	
			response.sendRedirect("content.jsp?id="+id+"&secret=1&chk=0");	 
		}
}
	
	
	conn.close();
	pstmt.close();
	rs.close();
		
%>
<body>

</body>
</html>