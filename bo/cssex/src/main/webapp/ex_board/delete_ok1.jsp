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
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

 	request.setCharacterEncoding("UTF-8");
 	String UID = request.getParameter("uid");
	String pw = request.getParameter("pw");
	
	
 	String sql_01 = "select * from board1 where UID=?";
 	PreparedStatement pstmt = conn.prepareStatement(sql_01);
 	pstmt.setString(1,UID);
 	pstmt.executeUpdate();
 	ResultSet rs = pstmt.executeQuery();
 	
 	rs.next();
 	String pwd = rs.getString("pw");
 
 	if(pwd.equals(pw))
 	{	
 	String sql = "delete from board1 where UID=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,UID);
	pstmt.executeUpdate();
 	
	
	sql = "alter table board1 auto_increment = 1;  set @count = 0; update board1 set board1.UID = @count:=@count+1";
 	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();	
	
	pstmt.close();
	conn.close();
	%>
	<script>
		opener.document.location.reload();
		window.close();
	</script>
	<%
	}
 	else 
 	{
	%>
 		<script>
 			alert("비밀번호가 일치하지 않습니다.");
 			history.back();
 		</script> 
  	<% }
	%>


</body>
</html>