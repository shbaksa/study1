<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request
	String id = request.getParameter("id");
	
	// 쿼리생성
	String sql = "select * from board2 where id=?";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	// 쿼리실행 => resultset
	ResultSet rs =  pstmt.executeQuery();
	rs.next();	
	%>
	
	<table width="700" border="1" align="center">
	<tr>
	<td > <b>제목</b> </td> <!-- 4 -->
	<td colspan="2"> <%=rs.getString("title") %> </td>
	<td align="right"> <form method="post" action="update.jsp">
	<input type="submit" value="수정"></form>
	</tr>
	<tr>
	<td> <b>이름</b> </td> <!-- 4 -->
	<td> <%=rs.getString("name") %> </td>
	<td> <b>지역</b> </td>
	<td> <%switch(rs.getInt("area")) { 
	case 0 : %> 서울 <% break; 
	case 1 : %> 경기 <% break;
	case 2 : %> 강원 <% break;
	case 3 : %> 충청 <% break;
	case 4 : %> 전라 <% break;	
	case 5 : %> 경상 <% break;	
	case 6 : %> 제주 <% break;	
	} %> </td>
	</tr>
	<tr> <!-- 4 -->
	<td> <b>조회수</b> </td>
	<td> <%=rs.getString("readnum") %> </td>	
	<td> <b>작성일</b> </td>
	<td> <%=rs.getString("writeday") %> </td>
	</tr>
	<tr> <!-- 2 -->
	<td> <b>내용</b> </td>
	<td colspan="3"> <%=rs.getString("content").replace("\r\n","<br>") %>
	</tr>	
	<tr>
	<td> <b>공개여부</b> </td> <!-- 2 -->
	<td colspan="3"> <%switch(rs.getInt("bimil")){
		case 0 :  %> 공개글 <% break;
		case 1 :  %> 비밀글 <% break;	
		}%> </td>
	</tr>
	
	<tr>
	<td colspan="4" align="right"> <form method="post" action="list.jsp">
	 <input type="submit" value="목록"> </form> </td>
	</tr>
	
	</table>
	
<%
pstmt.close();
conn.close();%>	

</body>
</html>