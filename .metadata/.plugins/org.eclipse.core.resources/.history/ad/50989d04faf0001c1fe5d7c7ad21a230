<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	

	
	<!-- write_ok.jsp : DB에 저장 -->
	<%
	// write.jsp의 폼에 입력된 값을 가져와서 board1테이블에 저장후 list.jsp로 이동
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");

	// request
	request.setCharacterEncoding("utf-8");
	String name="테스트";
	String title="페이지 연습을 열심히 할까요?";
	String pwd="1";
	String content="그냥 그냥 그냥";

	// 쿼리 생성
	
	String sql = "insert into board1(name,title,pwd,content,readnum,writeday) ";
	sql= sql+"values(?,?,?,?,0,now())";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	for(int i=0;i<=2685;i++){
	// 심부름꾼 생성
	
	pstmt.setString(1,name);
	pstmt.setString(2, title+i);
	pstmt.setString(3, pwd);
	pstmt.setString(4, content);
	// 쿼리 실행
	pstmt.executeUpdate();
	}
	// close();
	pstmt.close();
	conn.close();
	
	// list.jsp 연결
	response.sendRedirect("list.jsp");
	%>
