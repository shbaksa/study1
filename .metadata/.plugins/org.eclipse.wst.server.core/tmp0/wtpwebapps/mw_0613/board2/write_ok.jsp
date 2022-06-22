<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- board2/write_ok.jsp -->
	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String area=request.getParameter("area");
	String pwd =request.getParameter("pwd");
	String bimil;
	
	if(request.getParameter("bimil") == null) {
		
		bimil="0";
	}
	else{
		bimil = request.getParameter("bimil");
	}
	// 쿼리생성
	String sql = "insert into board2(title,name,content,area,bimil,pwd,writeday) values(?,?,?,?,?,?,now())";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	pstmt.setString(3, content);
	pstmt.setString(4, area);
	pstmt.setString(5, bimil);	
	pstmt.setString(6, pwd);
	
	// 쿼리실행
	pstmt.executeUpdate();

	// close 
	pstmt.close();
	conn.close();
	
	// list로 이동
	response.sendRedirect("list.jsp");
	
	
	/* raido, checkbox의 값 체크부분
	out.print(request.getParameter("name"));
	out.print("<hr>");
	

	out.print(request.getParameter("area"));
	out.print("<hr>");
	out.print(request.getParameter("bimil")); */
	%>

</body>
</html>