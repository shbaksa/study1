<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>



	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
  		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// request
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String mail = request.getParameter("mail");
		String content = request.getParameter("content");
		
		// 쿼리생성
		String sql = "update gesipan set name=?, title=?, mail=?, content=? where id=?";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, mail);
		pstmt.setString(4, content);
		pstmt.setString(5, id);
		
		// 쿼리실행
		pstmt.executeUpdate();
		
		
		// close
		pstmt.close();
		conn.close();
		
		// response
		response.sendRedirect("content.jsp?id="+id);
	
	%>