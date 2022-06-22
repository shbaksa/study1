<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@page import="java.sql.*" %>
 <%
     // import없이 클래스를 사용할수 있다..
     // java.util.Date today=new java.util.Date();
     // out.print(today.getDay());
     // jsp에서 테이블의 레코드 삭제하기
     // DB연결 => jsp에서는 예외처리하라는 메세지가 없다
     Class.forName("com.mysql.jdbc.Driver");
	 String db="jdbc:mysql://localhost:3306/first";
	 Connection conn=DriverManager.getConnection(db,"root","1234");
		
     // 쿼리생성
     String sql="delete from member where bunho=?";
     
     // 삭제할 bunho값을 request받아오기
     String bunho=request.getParameter("bunho");
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
     pstmt.setString(1,bunho);
     
     // 쿼리 실행
     pstmt.executeUpdate();
     
     // close()
     pstmt.close();
     conn.close();
     
     // 삭제가 끝난 후에 이동하고자 하는 문서로 이동
     response.sendRedirect("select.jsp"); // 해당문서로 이동하시오
 %>
</body>
</html>





