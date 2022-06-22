<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>
<%
   //out.print(request.getParameter("id"));
   // request한 id를 가지고 dat테이블에 하나의 레코드를 읽어와서 아래의 폼에 넣어준다
   // DB연결
   Class.forName("com.mysql.jdbc.Driver");
   String db="jdbc:mysql://localhost:3306/first";
   Connection conn=DriverManager.getConnection(db,"root","1234");
    
   // request
   String id=request.getParameter("id");
   
   // 쿼리 생성
   String sql="select * from dat where id=?";
   
   // 심부름꾼 생성
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setString(1,id);
   
   // 쿼리 실행 => ResultSet
   ResultSet rs=pstmt.executeQuery();
   rs.next();
   // 아래의 폼에 값 넣기
%>
<body>
  <table width="500" border="0" align="center">
    <caption><h3> 댓글 수정 </h3></caption>
    <tr>
     <form method="post" action="dat_update_ok.jsp"> <!-- name,content,pwd,id -->
      <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
      <td> <input type="text" name="name"  value="<%=rs.getString("name")%>" size="4" placeholder="이 름"> </td>
      <td> <textarea cols="30" rows="2" name="content" placeholder="댓글을 달아 주세요"><%=rs.getString("content")%></textarea> </td>
      <td> <input type="password" name="pwd" size="4" placeholder="비밀번호"> </td>
      <td> <input type="submit" value="댓글수정"> </td>
     </form>
    </tr>
  </table>
</body>
</html>