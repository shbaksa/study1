<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    <%

		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/qna?allowMultiQueries=true";
		Connection conn = DriverManager.getConnection(url,"root","0000");

		request.setCharacterEncoding("UTF-8");
		
		
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String content = request.getParameter("content");
		String dep = request.getParameter("dep");
		String grp = request.getParameter("grp");
		
		int dep01 = Integer.parseInt(dep)+1;

		String sql = "insert into qna(title,name,pwd,content,writeday,readnum,grp,dep,seq) values(?,?,?,?,now(0),0,?,?,0)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,title);
		pstmt.setString(2,name);
		pstmt.setString(3,pwd);
		pstmt.setString(4,content);
		pstmt.setString(5,grp);
		pstmt.setInt(6,dep01);
		pstmt.executeUpdate();
		
		conn.close();
		pstmt.close();
		
		response.sendRedirect("QnaMain.jsp");
				
		
%>