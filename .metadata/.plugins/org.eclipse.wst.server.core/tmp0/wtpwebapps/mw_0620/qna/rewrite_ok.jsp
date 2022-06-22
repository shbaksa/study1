<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
		
		// write_ok : 질문글을 테이블에 저장하고 list로 이동
		
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// request
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String pwd	= request.getParameter("pwd");
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		String grp = request.getParameter("grp");
		int depth = Integer.parseInt(request.getParameter("depth"))+1; 
		int seq = Integer.parseInt(request.getParameter("seq"))+1;

		// 지금 들어오는 글의 seq보다 큰 글은 seq를 1씩 증가시킨다.
		String sql2 = "update qna set seq=seq+1 where seq>=? and grp=?"; //
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setInt(1,seq);
		pstmt2.setString(2,grp);
		pstmt2.executeUpdate();
		
		// 쿼리생성  
		String sql = "insert into qna(name,pwd,content,title,writeday,grp,depth,seq) values(?,?,?,?,now(),?,?,?)";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, pwd);
		pstmt.setString(3, content);
		pstmt.setString(4, title);
		pstmt.setString(5, grp);
		pstmt.setInt(6, depth); // + 는 위에서해도되고 아래서 해도된다
		pstmt.setInt(7, seq);
			
		// 쿼리실행
		pstmt.executeUpdate();
		
		// close
		pstmt2.close();
		pstmt.close();
		conn.close();
		
		// response
		response.sendRedirect("list.jsp");
		
		
%>