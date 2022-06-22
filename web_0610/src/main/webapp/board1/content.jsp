<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- content.jsp => 하나의 레코드만 읽어와서 출력 -->
<%@page import="java.sql.*" %>
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id");
    
    // 쿼리 생성
    String sql="select * from board1 where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행 => ResultSet => 출력
    ResultSet rs=pstmt.executeQuery();
    rs.next();
%>
 <table width="500" border="1" align="center">
   <tr>
     <td> 제 목 </td>
     <td> <%=rs.getString("title")%> </td>
   </tr>
   <tr>
     <td> 작성자 </td>
     <td> <%=rs.getString("name")%> </td>
   </tr>
   <tr height="200">
     <td> 내 용 </td>
     <td> <%=rs.getString("content").replace("\r\n","<br>")%> </td>
   </tr>
   <tr>
     <td> 조회수 </td>
     <td> <%=rs.getString("readnum")%> </td>
   </tr>
   <tr>
     <td> 작성일 </td>
     <td> <%=rs.getString("writeday")%> </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
      <a href="update.jsp?id=<%=rs.getString("id")%>"> 수정 </a>
      <a href="list.jsp"> 목록 </a>
      <a href="delete.jsp?id=<%=rs.getString("id")%>"> 삭제 </a>
     </td>
   </tr>
 </table>
</body>
</html>





