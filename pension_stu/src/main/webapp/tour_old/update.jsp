<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <!-- tour/update.jsp -->    
 <c:if test="${userid == null}">
<c:redirect url="../member/login.jsp"/>
</c:if>
<%@ page import = "dao.TourDao" %>
<%
	TourDao tdao = new TourDao();
	tdao.update(request);
%>
<c:import url="../top.jsp"/>
   
   	   
   <div id="tour_update_section">
   <form method="post" action="../tour/update_ok.jsp" enctype="multipart/form-data">
   <input type="hidden" name="id" value="${tdto.id}">
   	<table width="900" align="center">
		<caption>
			<h2>여 행 후 기</h2>
		</caption>	
			<tr>
				<td width="70">제목</td>
				<td width="150" ><input type="text" name="title" value="${tdto.title}"></td>			
			</tr>
			<tr>
				<td>작성자</td>
				<td>${tdto.userid}</td>			
			</tr>
			<tr>
				<td>사진</td>
				<td colspan="3"><img src="../tour/img/${tdto.fname}"
					width="150" height="150"> <input type="file" name="fname"></td>
			</tr>
			<tr>
				<td height="400">내용</td>
				<td colspan="3"><textarea rows="6" cols="40" name="content"> ${tdto.content}</textarea></td>
			</tr>
			<tr>
			<td colspan="2"><input type="submit" value="수정"></td>
			</tr>
			
	</table>
   </form>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>