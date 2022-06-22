<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
	<% 
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
     	String db="jdbc:mysql://localhost:3306/first";
     	Connection conn=DriverManager.getConnection(db,"root","1234");
		
     	// request
     	String id=request.getParameter("id");
     	
     	// 쿼리 생성
     	String sql="select * from dat where id=?";
     	
     	// 심부름꾼 생성
     	PreparedStatement pstmt = conn.prepareStatement(sql);
     	pstmt.setString(1, id);
     	
     	// 쿼리 실행
     	ResultSet rs = pstmt.executeQuery();
     	rs.next();
	
	%>





<body>
  <table width="500" border="0" align="center">
    <tr>
     <form method="post" action="dat_update_ok.jsp"> <!-- name,content,pwd,id -->
     <input type="hidden" name="id" value="<%=rs.getInt("id") %>">
      <td> <input type="text" name="name" size="4" placeholder="이 름" value="<%=rs.getString("name") %>"> </td>
      <td> <textarea cols="30" rows="2" name="content" placeholder="댓글을 달아 주세요" ><%=rs.getString("content")%></textarea> </td>
      <td> <input type="password" name="pwd" size="4" placeholder="비밀번호"> </td>
      <td> <input type="submit" value="댓글수정"> </td>
     </form>
    </tr>
  </table>
</body>
</html>