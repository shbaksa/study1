<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import="member.Member_Dao"%>

	<%
		Member_Dao md = new Member_Dao();
		//String name = request.getParameter("name");
		//String age = request.getParameter("age");
		//String id = request.getParameter("id");
		
		//out.print(name+"/"+age+"/"+id);
		md.update(request);
		
		response.sendRedirect("list.jsp");
	
	%>
	