<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<meta charset="UTF-8">
<%

	Class.forName("org.mariadb.jdbc.Driver");
	String db="jdbc:mariadb://localhost:3306/ex1";
	Connection conn=DriverManager.getConnection(db,"root","0000");


	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	
	
	if(userid != ""){
		
			String sql = "select * from member_1 where userid=? and pwd=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			pstmt.setString(2,pwd);
			ResultSet rs = pstmt.executeQuery();
		
			if(rs.next() == false)
			{
				response.sendRedirect("mainlogin.jsp?chk=2");
			}
			else
			{
				session.setAttribute("userid",userid);
				response.sendRedirect("main.jsp");
			}
					
			pstmt.close();
			rs.close();
	}
	else
	{
		response.sendRedirect("mainlogin.jsp?chk=1");
	}
	

	conn.close();



%>