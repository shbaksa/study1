<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    //rewrite_ok.jsp
    // grp, depth, seq
    // grp는 그대로
    // depth, seq는 1을 증가시킨후 저장
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
    String grp=request.getParameter("grp");
    int depth=Integer.parseInt(request.getParameter("depth"))+1;
    int seq=Integer.parseInt(request.getParameter("seq"))+1;
    
    // 지금 들어오는 글의 seq보다 큰 글은 seq를 1씩 증가시킨다..
    String sql2="update qna set seq=seq+1 where seq>=? and grp=?";  // seq값은
    PreparedStatement pstmt2=conn.prepareStatement(sql2);
    pstmt2.setInt(1,seq);
    pstmt2.setString(2,grp);
    pstmt2.executeUpdate();
    
    // 쿼리 생성
    String sql="insert into qna(title,name,content,pwd,grp,depth,seq,writeday) ";
    sql=sql+"values(?,?,?,?,?,?,?,now())";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, name);
    pstmt.setString(3, content);
    pstmt.setString(4, pwd);
    pstmt.setString(5, grp);
    pstmt.setInt(6, depth);
    pstmt.setInt(7, seq);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // list이동
    response.sendRedirect("list.jsp");
    
%>








