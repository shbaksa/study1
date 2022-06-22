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
	String pwd =  request.getParameter("pwd");
	String grp =  request.getParameter("grp");
	int depth = Integer.parseInt(request.getParameter("depth"))+1;
	int seq = Integer.parseInt(request.getParameter("seq"))+1;
	
	String sql ="update qna set seq=seq+1 where seq>=? and grp=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,seq);
	pstmt.setString(2,grp);
	pstmt.executeUpdate();
	
	sql="insert into qna(name,pwd,title,grp,depth,seq,writeday) ";
	sql=sql+"values(?,?,?,?,?,?,now())";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, pwd);
	pstmt.setString(3, title);
	pstmt.setString(4, grp);
	pstmt.setInt(5,depth);
	pstmt.setInt(6, seq);
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("main.jsp");
	

%>
