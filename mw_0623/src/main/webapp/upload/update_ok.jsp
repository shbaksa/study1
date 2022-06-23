<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>    
<%@ page import="java.sql.*" %>
    	
   <%
    	// 파일과 입력된 값을 받아서 값은 테이블에 저장, 파일은 특정 폴더에 저장
    		
   		// MultipartRequest , DefaultFileRenamePolicy   두개의 클래스를 사용
   	
   		String path=request.getRealPath("/upload/img"); // 상대경로 
   		int size=1024*1024*30;
   		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());

   		// DB연결
   		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");
		
		// request => multi로 접근
		String id = multi.getParameter("id");
		String title = multi.getParameter("title"); 
		String name = multi.getParameter("name"); 
		String content = multi.getParameter("content"); 
		String fname = multi.getFilesystemName("fname"); 
		
		PreparedStatement pstmt;
		// 쿼리생성
		if(fname==null) {  // 기존그림을 그대로 사용
		
			String sql ="update upload set title=?, name=?, content=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, name);
			pstmt.setString(3, content);
			pstmt.setString(4, id);
			
		}
		else{
			
			String sql = "update upload set title=?, name=?, content=?, fname=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, name);
			pstmt.setString(3, content);
			pstmt.setString(4, fname);
			pstmt.setString(5, id);
			
		}

		// 쿼리실행
		pstmt.executeUpdate();

		// close
		pstmt.close();
		conn.close();
		
		// response
		response.sendRedirect("content.jsp?id="+id); 
	%>
