<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="sungjuk.Sungjuk_Dao" %>  
<%@page import="java.sql.ResultSet" %>  
<%
   //수정할 레코드를 읽어와서 폼에 출력
   Sungjuk_Dao sdao=new Sungjuk_Dao();
   ResultSet rs=sdao.update(request);
   rs.next();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="update_ok.jsp">
    <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
    이름 <input type="text" name="name" value="<%=rs.getString("name")%>"> <p>
    국어 <input type="text" name="kor" value="<%=rs.getInt("kor")%>"> <p>
    영어 <input type="text" name="eng" value="<%=rs.getInt("eng")%>"> <p>
    수학 <input type="text" name="mat" value="<%=rs.getInt("mat")%>"> <p>
    <input type="submit" value="성적수정">
  </form>
</body>
</html>