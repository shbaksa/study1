<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>    
<%@ page import="java.sql.*" %>
    	
   <%
    	// 파일과 입력된 값을 받아서 값은 테이블에 저장, 파일은 특정 폴더에 저장
    		
   		// MultipartRequest , DefaultFileRenamePolicy   두개의 클래스를 사용
   		// String path="C:/java\\mw_0623\\src\\main\\webapp\\upload\\img"; // 절대경로 //  슬래시는 1개 역슬래시는 2개
   		String path=request.getRealPath("/upload/img"); // 상대경로 
   		int size=1024*1024*30;
   		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
   		
   		// 생성자에 들어가는 인수 => request, 저장경로, 최대크기, "utf-8", 중복방지객체
  
   				
   				
   		// 파일은 업로드 완료 => 데이터베이스에 정보를 저장(제목, 내용, 이름, 파일이름)
   		
   		// DB연결
   		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");
		
		// request => multi로 접근
		
		// request.setCharacterEncoding("utf-8"); MultipartRequest multi 뒤에서 request "utf-8" 다받아서 안해도됌

		String title = multi.getParameter("title"); // String title = request.getParameter("title")
		String name = multi.getParameter("name"); // String name = request.getParameter("name")
		String content = multi.getParameter("content"); // String content = request.getParameter("content")
		String fname = multi.getFilesystemName("fname"); // 시스템에 저장된 파일이름
		
		/* out.print(fname+" : "); // 중복방지로 만들어진 이름
		out.print(multi.getOriginalFileName("fname")); */ // 원래 그림 이름
		
		// 쿼리생성
		String sql="insert into upload(title,name,content,fname,writeday) ";
		sql=sql+"values(?,?,?,?,now())";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, content);
		pstmt.setString(4, fname);
		
		// 쿼리실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		// response
		response.sendRedirect("list.jsp"); 

   		
   	%>