<%@page import="java.sql.*"%>
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
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");	
	
	String sql="select * from sungjuk where hakbun=?";
	String hakbun=request.getParameter("hakbun");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, hakbun);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	
	%>
		<form method="post" action="update_ok2.jsp">
	<input type="hidden" name="hakbun" value="<%=rs.getString("hakbun")%>">
	학번 <%=rs.getString("hakbun")%> <p>
	이름 <input type="text" name="name" value="<%=rs.getString("name") %>" > <p>
	국어 <input type="text" name="kor" value="<%=rs.getString("kor") %>" > <p>
	영어 <input type="text" name="eng" value="<%=rs.getString("eng") %>" > <p>
	수학 <input type="text" name="mat" value="<%=rs.getString("mat") %>" > <p>
	<input type="submit" value="전송">
	</form>
	<% 
	rs.close();
	pstmt.close();
	conn.close();
	%>

</body>
</html>