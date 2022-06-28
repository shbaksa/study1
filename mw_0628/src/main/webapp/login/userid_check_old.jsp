<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 아이디를 가져와서 쿼리를 통해 중복확인
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
   
    // request
    String userid=request.getParameter("userid");
    // 쿼리 생성
    String sql="select count(*) as cnt from member where userid=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, userid);
    
    // 쿼리 실행
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    
    // out.print(rs.getString("cnt"));
    
    if(rs.getInt("cnt")==0)
    {
%>
      <script>
        alert("사용이 가능한 아이디 입니다");
        history.back();
      </script>
<%
    }
    else
    {
%> 
     <script>
       alert("사용이 불가능한 아이디 입니다");
       history.back();
     </script>
<%
    }
%>













