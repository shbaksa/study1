<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="upload.UploadDao" %> 
<%@page import="java.sql.ResultSet" %>   
<%
   UploadDao udao=new UploadDao();
   ResultSet rs=udao.content(request);
   rs.next();
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table width="500" align="center" border="1">
     <tr>
       <td> 제목 </td>
       <td> <%=rs.getString("title")%> </td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <%=rs.getString("name")%> </td>
     </tr>
     <tr>
       <td> 내용 </td>
       <td> 
         <img src="img/<%=rs.getString("fname")%>" width="400"> <p>
         <%=rs.getString("content").replace("\r\n","<br>")%> 
       </td>
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
       <td align="center" colspan="2">   
         <a href="update.jsp?id=<%=rs.getInt("id")%>"> 수정 </a>
         <a href="list.jsp"> 목록 </a>
         <a href="delete.jsp?id=<%=rs.getInt("id")%>&fname=<%=rs.getString("fname")%>"> 삭제 </a>
       </td>                                     <!-- 삭제를 위해 파일이름을 전달 -->
     </tr>
   </table>
</body>
</html>
<%
   udao.close();
%>