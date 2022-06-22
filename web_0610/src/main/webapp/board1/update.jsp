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
    // 수정하고자 하는 레코드를 읽어와서 수정할수 있게 폼태그에 넣어준다..
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
    
    // 쿼리 실행 => ResultSet
    ResultSet rs=pstmt.executeQuery();
    rs.next();
%>
<body> <!-- update.jsp (수정폼태그) -->
  <form method="post" action="update_ok.jsp">
    <input type="hidden" name="id" value="<%=rs.getString("id")%>"> 
    <table width="500" border="0">
      <tr>
        <td> 제목 </td>
        <td> <input type="text" name="title" size="40" value="<%=rs.getString("title")%>"> </td>
      </tr>
      <tr>
        <td> 이름 </td>
        <td> <input type="text" name="name" size="4" value="<%=rs.getString("name")%>"> </td>
      </tr>
      <tr>
        <td> 내용 </td>
        <td> <textarea cols="42" rows="6" name="content"><%=rs.getString("content")%></textarea> </td>
      </tr>
      <tr>
        <td> 비밀번호 </td>
        <td> <input type="password" name="pwd" size="4"> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
           <input type="submit" value="수정">
        </td>
      </tr>
    </table>
  </form>
</body>
</html>
<%
       // close()
%>