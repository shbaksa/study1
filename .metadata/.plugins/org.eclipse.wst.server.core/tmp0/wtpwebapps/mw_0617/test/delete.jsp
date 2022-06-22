<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
  		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// request 
		String pwd = request.getParameter("pwd");
		String id = request.getParameter("id");
		
		// 쿼리생성
		String sql = "select * from gesipan where id=?";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		String dbpwd = rs.getString("pwd");
		
		rs.close();
		
		if(pwd.equals(dbpwd)){
			
			sql = "delete from gesipan where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
			sql = "set @count=0";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
			sql = "update gesipan set id=@count:=@count+1";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			response.sendRedirect("list.jsp");
		}
		else {
			
			pstmt.close();
			conn.close();
			response.sendRedirect("content.jsp?id="+id);
		}
			
		
		
		
	
	%>