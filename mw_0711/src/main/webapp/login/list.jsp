<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.BoardDao" %>
    <%
    	// member_board테이블 작업
    	
    	BoardDao bd = new BoardDao();
    	bd.check_session(session, response);
    	ResultSet rs = bd.list();
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/ta.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<table width="600" align="center">
	<caption><span><h2>회 원 게 시 판</h2>   <h5><%=session.getAttribute("name") %>님 &nbsp;<a href="logout.jsp">로그아웃</a></h5></span></caption>
    <tr>
      <td> 제 목 </td>
      <td> 이 름 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
    <%while(rs.next()){ %>
    <tr>
    <td><a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %> </a></td>
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getString("readnum") %></td>
    <td><%=rs.getString("writeday") %></td>
    </tr>
    <% } %>
    <tr>
    <td colspan="4"><a href="write.jsp">글쓰기</a></td>
    </tr>
    <tr>
    <td colspan="4"><a href="main.jsp">메인페이지</a></td>
    </tr>
    </table>

</body>
</html>

<% bd.close(); %>