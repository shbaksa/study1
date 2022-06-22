<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- select.jsp -->
<%@page import="java.sql.*" %>

 <%
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
     String db="jdbc:mysql://localhost:3306/first";
     Connection conn=DriverManager.getConnection(db,"root","1234");
    
     // 쿼리 생성
     String sql="select * from sungjuk";
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
          
     // 쿼리 실행 => ResultSet
     ResultSet rs=pstmt.executeQuery();    		 
     
     // 출력
%>
 <table width="500" border="1">
   <tr>
     <td> 학번 </td>
     <td> 이름 </td>
     <td> 국어 </td>
     <td> 영어 </td>
     <td> 수학 </td>
     <td> 수정 </td>
     <td> 삭제 </td>
   </tr>
<%
  while(rs.next())
  {
%>  
   <tr>
     <td> <%=rs.getString("hakbun")%> </td>
     <td> <%=rs.getString("name")%> </td>
     <td> <%=rs.getString("kor")%> </td>
     <td> <%=rs.getString("eng")%> </td>
     <td> <%=rs.getString("mat")%> </td>
     <td> <a href="update.jsp?hakbun=<%=rs.getString("hakbun")%>"> 수정 </a> </td>
     <td> <a href="delete.jsp?hakbun=<%=rs.getString("hakbun")%>"> 삭제 </a></td>
   </tr>
<%
  }
%>   
   <tr>
     <td colspan="7" align="center"> <a href="input.jsp"> 입력 </a> </td>
   </tr>
 </table>
<%
     // close()
 
%>
</body>
</html>