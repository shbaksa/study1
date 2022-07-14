<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "boardpage.BoardDao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

	<%
		BoardDao bdao = new BoardDao();
		
		bdao.list(request);
		bdao.getpage(request);
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr,td{
	border : 1px solid black;
}

</style>
</head>
<body>
	
	<table width="700" align="center">
	<tr>
	<td>제목</td>
	<td>이름</td>
	<td>조회수</td>
	<td>작성일</td>
	</tr>
	<c:forEach items="${list}" var="bdto">
	<tr>
	<td>${bdto.title }</td>
	<td>${bdto.name }</td>
	<td>${bdto.readnum }</td>
	<td>${bdto.writeday }</td>
	</tr>	
	</c:forEach>
	<tr>
	<td colspan="4" align="center">	
	
	<c:if test="${pager.page != 0 && pager.page >1}">
	<a href="list.jsp?page=1">처음</a>
	</c:if>
	
	<c:if test="${pager.pstart != 1 }">
	<a href="list.jsp?page=${pager.pstart-1 }"> 10쪽</a>
	</c:if>
	
	<c:if test="${pager.page != 1 }">
	<a href="list.jsp?page=${pager.page-1 }"> < </a>
	</c:if>
		
	<c:forEach var="i" begin="${pager.pstart}" end="${pager.pend}" step="1">
	<a href="list.jsp?page=${i}">${i}</a>	
	</c:forEach>
	
	<c:if test="${pager.page != pager.chong }">
	<a href="list.jsp?page=${pager.page+1 }"> > </a>
	</c:if>
	
	<c:if test="${pager.chong != pager.pend }">
	<a href="list.jsp?page=${pager.pend+1 }"> 10쪽 </a>
	</c:if>
	
	<c:if test="${pager.page < pager.chong}">
	<a href="list.jsp?page=${pager.chong }">마지막</a>
	</c:if>

	</td>
	</tr>
	<tr>
	<td colspan="4" align="center">
	<a href="write.jsp">글쓰기</a>
	</td>
	</tr>	
	</table>
	
	

</body>
</html>