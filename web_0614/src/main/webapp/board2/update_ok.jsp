<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
     // update_ok.jsp 
     // board2의 테이블을 수정하는것 (단, 비밀번호가 맞을때)
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
     String db="jdbc:mysql://localhost:3306/first";
     Connection conn=DriverManager.getConnection(db,"root","1234");
    
     // request
     request.setCharacterEncoding("utf-8");
     String title=request.getParameter("title");
     String name=request.getParameter("name");
     String content=request.getParameter("content");
     String id=request.getParameter("id");
     String pwd=request.getParameter("pwd"); // 폼에 입력된 비밀번호
     String area=request.getParameter("area");
     String bimil;
     if(request.getParameter("bimil")==null)
     {
    	 bimil="0";
     }
     else
     {
    	 bimil=request.getParameter("bimil");
     }
     
     // 비밀번호 체크부분
     // DB비밀번호 읽어오기 => 작업하고자 하는 레코드의 비밀번호
     String sql="select pwd from board2 where id=?";
     PreparedStatement pstmt=conn.prepareStatement(sql);
     pstmt.setString(1, id);
     ResultSet rs=pstmt.executeQuery();
     rs.next();
     String dbpwd=rs.getString("pwd");
    
     if(pwd.equals(dbpwd))  // 폼비밀번호.equals(DB비밀번호)
     {
         // 쿼리 생성
         sql="update board2 set title=?, name=?, content=?, area=?, bimil=? where id=?";
         // 심부름꾼 생성
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1, title);
         pstmt.setString(2, name);
         pstmt.setString(3, content);
         pstmt.setString(4, area);
         pstmt.setString(5, bimil);
         pstmt.setString(6, id);
         
         // 쿼리 실행
         pstmt.executeUpdate();
         
         // close
         pstmt.close();
         conn.close();
         
         // 이동
         response.sendRedirect("content.jsp?id="+id);
     }
     else
     {
    	 pstmt.close();
    	 conn.close();
    	 // 이동
    	  response.sendRedirect("update.jsp?chk=1&id="+id); // chk값은 비밀번호 경고창을 띄우기 위한
    	 // 경고창을 띄운뒤 자바스크립트로 이동
%>
     <script>
       //alert("비밀번호가 틀립니다");
       //history.back();
       //location="update.jsp?id=<%=id%>";
     </script>
<%    	 
     }
%>




