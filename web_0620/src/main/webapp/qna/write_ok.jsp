<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // write_ok : 질문글을 테이블에 저장하고 list로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String title=request.getParameter("title");
    String name=request.getParameter("name");
    String content=request.getParameter("content");
    String pwd=request.getParameter("pwd");
    
    // grp, depth, seq
    // grp 가장높은 grp값을 가져와서 +1  
    String sql="select ifnull(max(grp),0) as grp from qna";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    int grp=rs.getInt("grp")+1;
    
    // 쿼리 생성  
    sql="insert into qna(title,name,content,pwd,writeday,grp,depth,seq) ";
    sql=sql+"values(?,?,?,?,now(),?,1,1)";
    
    // 심부름꾼 생성
    pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, name);
    pstmt.setString(3, content);
    pstmt.setString(4, pwd);
    pstmt.setInt(5, grp);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // list로 이동
    response.sendRedirect("list.jsp");
%> 