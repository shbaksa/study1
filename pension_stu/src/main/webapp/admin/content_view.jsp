<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.AdminDao"%>
<% // admin/content_view.jsp
AdminDao adao = new AdminDao();
String content = adao.content_view(request,out);
%>

<div style="width:200px;height:100px;border:1px solid red;background:#fff">
	<%= content%>
</div>