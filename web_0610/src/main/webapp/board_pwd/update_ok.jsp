<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 해당 레코드의 값을 수정시키고 content로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd"); // 수정폼에서 입력한 비밀번호
    
    // DB에 있는 비밀번호를 가져오기
    String sql2="select pwd from board1 where id=?";
    PreparedStatement pstmt2=conn.prepareStatement(sql2);
    pstmt2.setString(1, id);
    
    ResultSet rs=pstmt2.executeQuery();
    rs.next(); // rs.getString("pwd")
    String dbpwd=rs.getString("pwd");  // Db에 있는 비밀번호
    
    if(pwd.equals(dbpwd))  // == : 기본자료형에서만 가능  => 클래스와 클래스의 비교는 equals()메소드를 사용
    {                 //   객체변수1.equals(객체변수1) => 같다면 true, 틀리면 false
    	// 쿼리 생성
        String sql="update board1 set name=?, title=?, content=? where id=?";
        
        // 심부름꾼 생성
        PreparedStatement pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, title);
        pstmt.setString(3, content);
        pstmt.setString(4, id);
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
        // close()
        pstmt.close();
        conn.close();
        // content로 이동
        response.sendRedirect("content.jsp?id="+id);  // content.jsp?id=11
    }
    else
    {
    	conn.close();
    	// update로 이동
        response.sendRedirect("update.jsp?id="+id);  // update.jsp?id=11
    }
    
    
    
    
%>