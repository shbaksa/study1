<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>

	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String content = request.getParameter("content");	
	String area = request.getParameter("area");
	String bimil;
	
	// String bimil = request.getParameter("bimil");
	// String bimil; 둘다 가능	

	// 쿼리생성         // * 대신 pwd를 사용해도 된다 * 전체 불러오기 pwd 비밀번호만 불러오기
	String sql = "select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	String dbpwd = rs.getString("pwd");
	
	
	
	if(request.getParameter("bimil") == null) {
		
		bimil="0";
	}
	else{
		bimil = request.getParameter("bimil");
	}
	
	if(pwd.equals(dbpwd)) {
		
		String sql1 = "update board2 set title=?, name=?, content=?, bimil=?, area=? where id=?";
		// sql = "update board2 set title=?, name=?, content=?, bimil=?, area=? where id=?";
		PreparedStatement pstmt1 = conn.prepareStatement(sql1);
		// pstmt = conn.prepareStatement(sql);
		pstmt1.setString(1, title);
		pstmt1.setString(2, name);
		pstmt1.setString(3, content);
		pstmt1.setString(4, bimil);
		pstmt1.setString(5, area);
		pstmt1.setString(6, id);
		pstmt1.executeUpdate();
		
		pstmt1.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
	}
	else{
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("update.jsp?chk=1&id="+id); // chk값은 비밀번호 경고창을 띄우기 위한 값
		
	}
	
	%>
	
	<!--  // else { 
		
		 <script>
			alert("비밀번호 틀림");
			history.back();
			location="update.jsp?id=%=//id%";
		</script> 

	
	/* rs.close();
	pstmt.close();
	conn.close();
	} */ --> 

	
	
	
	
	
	
	