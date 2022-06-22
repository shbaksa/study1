<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 댓글 수정 후에 오픈된 창이므로 창을 닫아준다..
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String content=request.getParameter("content");
    String pwd=request.getParameter("pwd"); // 폼에 입력된 비밀번호
    String id=request.getParameter("id");
    
    // db비밀번호 가져오기
    String sql="select pwd from dat where id=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    String dbpwd=rs.getString("pwd");
    
    if(pwd.equals(dbpwd))
    {
       // 쿼리 생성
       sql="update dat set name=?, content=? where id=?";
       
       // 심부름꾼 생성
       pstmt=conn.prepareStatement(sql);
       pstmt.setString(1, name);
       pstmt.setString(2, content);
       pstmt.setString(3, id);
       
       // 쿼리 실행
       pstmt.executeUpdate();
       
       // close
       pstmt.close();
       conn.close();
       
       // 창닫아준다..
%>
     <script>
       opener.location.reload();// 부모창을 새로고침
       close();
     </script>
<%       
    }
    else
    {
    	// close
        pstmt.close();
        conn.close();
       response.sendRedirect("dat_update.jsp?id="+id);
    }
%> 