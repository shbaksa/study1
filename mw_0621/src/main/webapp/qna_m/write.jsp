<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%	

	Class.forName("com.mysql.jdbc.Driver");
	String db="jdbc:mysql://localhost:3306/first";
	Connection conn=DriverManager.getConnection(db,"root","1234");	
	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String pwd = request.getParameter("pwd");
	
	String sql = "select ifnull(max(grp),0) as grp from qna";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	int grp=rs.getInt("grp")+1;
	
	sql="insert into qna(name,title,pwd,grp,depth,seq,writeday) ";
	sql=sql+"values(?,?,?,?,1,1,now())";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, title);
	pstmt.setString(3, pwd);
	pstmt.setInt(4, grp);
	pstmt.executeUpdate();
	
 	rs.close();
 	pstmt.close();
 	conn.close();
 	
 	response.sendRedirect("main.jsp");
	
	
	%>