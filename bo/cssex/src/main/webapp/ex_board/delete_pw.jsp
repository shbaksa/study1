<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>password 입력</title>
<%@ page import= "java.sql.*" %>
<script>
	function check()
	{
		if(pw == "")
			{
				alert("비밀번호를 확인하세요.");
				return false;
			}
		else
			{
				return true;
			}
			
	}

</script>

</head>

<%

	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String UID = request.getParameter("choice");	
	String sql = "select * from board1 where UID=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,UID);
	pstmt.executeUpdate();
			
	ResultSet rs = pstmt.executeQuery();
		
	rs.next();	
	
%>
		
<body>
<form method="post" action="delete_ok1.jsp?uid=<%= UID %>" onsubmit="return check()">
<table>
<tr>
	패스워드 입력 : <td> <input type="password" size="15" name="pw" > </td>
	<td> <input type="submit" value="입력"></td>
</tr>
</table>
</form>
</body>
</html>