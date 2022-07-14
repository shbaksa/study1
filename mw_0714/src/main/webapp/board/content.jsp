<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

	<%
		BoardDao bdao = new BoardDao();
		
		bdao.content(request);
		// request값을 매개변수로 보내서 bdao에서
		// request.setAttribue()이 실행
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
	<caption><h2>게시판</h1></caption>
	<tr>
	<td>제목</td>
	<td>${bdto.title}</td>
	</tr>
	<tr>
	<td>이름</td>
	<td>${bdto.name}</td>
	</tr>
	<tr>
	<td>조회수</td>
	<td>${bdto.readnum}</td>
	</tr>
	<tr>
	<td>작성일</td>
	<td>${bdto.writeday}</td>
	</tr>
	<tr>
	<td height="400">내용</td>
	<td>${bdto.content}</td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<a href="update.jsp?id=${bdto.id }">수정</a>
	<a href="list.jsp">목록</a>
	<a href="delete.jsp?id=${bdto.id}">삭제</a>
	</td>
	</tr>
	</table>
	
	

</body>
</html>