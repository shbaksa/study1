<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>  
<%@page import="java.sql.*" %>  
<%
    // 파일과 입력된 값을 받아서 값은 테이블에 저장, 파일은 특정 폴더에 저장
    //String path="C:\\java\\web_0623\\src\\main\\webapp\\upload\\img";
    String path=request.getRealPath("/upload/img");
    int size=1024*1024*30;
    MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
    // 생성자에 들어가는 인수 => request, 저장경로, 최대크기, "utf-8", 중복방지객체)

    // 파일은 업로드 완료 => 데이터베이스에 정보를 저장(제목, 내용, 이름, 파일이름)
    // Db연결
     Class.forName("org.mariadb.jdbc.Driver");
     String db="jdbc:mariadb://localhost:3306/ex1";
     Connection conn=DriverManager.getConnection(db,"root","0000");
     
    // request => multi로 접근
    String title=multi.getParameter("title");
    String name=multi.getParameter("name");
    String content=multi.getParameter("content");
    String fname=multi.getFilesystemName("fname"); // 시스템에 저장된 파일이름
    
    //out.print(fname+" : ");
    //out.print(multi.getOriginalFileName("fname")); // 원래이름
    // 쿼리 생성
    String sql="insert into upload(title,name,content,fname,writeday)  values(?,?,?,?,now())";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, name);
    pstmt.setString(3, content);
    pstmt.setString(4, fname);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // list로 이동
    response.sendRedirect("list.jsp");
%>













