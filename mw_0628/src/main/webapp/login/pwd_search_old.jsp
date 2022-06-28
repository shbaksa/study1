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
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		// 쿼리생성
		String sql = "select pwd from member where userid=? && name=? && phone=?";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
			// 이름과 전화번호, 아이디가 맞는경우
			out.print(rs.getString("pwd"));
		}
		else{
			// 틀린경우
			out.print("1");
		}
	
	
	
	%>