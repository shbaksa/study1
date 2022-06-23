<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 하나의 레코드를 읽어와서 수정할수 있게 폼태그에 넣어준다.
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id");
    
    // 쿼리 생성
    String sql="select * from upload where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    ResultSet rs=pstmt.executeQuery();
    rs.next();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>     <!-- update gesipan set title=?, name=?, content=?, email=? where id=? -->
  <form method="post" action="update_ok.jsp" enctype="multipart/form-data"> 
   <input type="hidden" name="id" value="<%=id%>">
   <table width="600" align="center">
     <tr>
       <td> 제목 </td>
       <td> <input type="text" name="title" size="50" value="<%=rs.getString("title")%>"> </td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <input type="text" name="name" value="<%=rs.getString("name")%>"> </td>
     </tr>
     <tr>
       <td> 내용 </td>
       <td> <textarea cols="50" rows="6" name="content"><%=rs.getString("content")%></textarea> </td>
     </tr>
     <tr>
       <td colspan="2">
         <input type="file" name="fname"> 
         <img src="img/<%=rs.getString("fname")%>" width="100"> 
       </td>
     </tr>
     <tr>
       <td align="center" colspan="2"> <input type="submit" value="수정">  </td>
     </tr>
   </table>
  </form>
</body>
</html>