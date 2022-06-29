<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import="java.sql.*" %>

<% 

Class.forName("org.mariadb.jdbc.Driver");
String db="jdbc:mariadb://localhost:3306/ex1";
Connection conn=DriverManager.getConnection(db,"root","0000");

request.setCharacterEncoding("UTF-8");
String userid = request.getParameter("userid");

String sql = "select count(*) as cnt from member_1 where userid=?";

PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1,userid);
ResultSet rs = pstmt.executeQuery();
rs.next();

out.print(rs.getString("cnt"));

%>