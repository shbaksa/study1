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
  		String name = request.getParameter("name");
  		String title = request.getParameter("title");
  		String content = request.getParameter("content");
  		String mail = request.getParameter("mail");
  		String pwd = request.getParameter("pwd");
  		
  		if(title.equals("")) {
  			response.sendRedirect("write.jsp?none=1");
  		}
  		else {
		// 쿼리생성
		String sql ="insert into gesipan(name,title,content,mail,pwd,readnum,writeday) values(?,?,?,?,?,0,now())";
		            
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, mail);
		pstmt.setString(5, pwd);

		// 쿼리실행
		pstmt.executeUpdate();
		// close
		pstmt.close();
		conn.close();
		
		// response
		response.sendRedirect("list.jsp");
  		}
		%>
	
	