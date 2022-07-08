<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="upload.UploadDao" %>
<%@ page import="java.sql.ResultSet" %>
	
	<%
		UploadDao ud = new UploadDao();
		ResultSet rs = ud.content(request,response);
		rs.next();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="update_ok.jsp" enctype="multipart/form-data"> 
   <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
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