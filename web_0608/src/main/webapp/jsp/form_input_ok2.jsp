<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
   request.setCharacterEncoding("utf-8");
   
   String hob="";
   if(request.getParameterValues("hobby") != null)
   {
     String[] hobby=request.getParameterValues("hobby");
     
     for(int i=0;i<hobby.length;i++)
     {
	     hob=hob+hobby[i]+",";
     }
   }

   out.print(hob);
 %>
</body>
</html>