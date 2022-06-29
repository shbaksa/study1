<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String db = "jdbc:mysql://localhost:3306/first";
    Connection conn = DriverManager.getConnection(db,"root","0000");
    
 
    String id=request.getParameter("id");
    //String food=request.getParameter("food");
    
    String sql="update vote set p?=p?+1 where id=?";
    int food = Integer.parseInt(request.getParameter("food"))+1;
    
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, food);
    pstmt.setInt(2, food);
    pstmt.setString(3, id);
    
    pstmt.executeUpdate();
    
    pstmt.close();
    conn.close();
    
    response.sendRedirect("vote_view.jsp");

%>