<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


	<%
		// 이름과 전화번호를 이용하여 아이디를 검색
		
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
    	Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// request
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		// 쿼리생성
		String sql = "select userid from member where name=? && phone=?";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		
		// 이름과 전화번호가 맞는경우
		if(rs.next())
		out.print(rs.getString("userid"));
		
		// 이름과 전화번호가 틀린경우
		else
		out.print("1");
	%>
	