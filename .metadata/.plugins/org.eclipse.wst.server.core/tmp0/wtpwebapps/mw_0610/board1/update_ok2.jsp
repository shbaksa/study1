<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%
Class.forName("com.mysql.jdbc.Driver");
String db = "jdbc:mysql://localhost:3306/first";
Connection conn = DriverManager.getConnection(db, "root", "1234");
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String title = request.getParameter("title");
String content = request.getParameter("content");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

String sql = "select * from board1 where id=?";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs = pstmt.executeQuery();
rs.next();

String pw = rs.getString("pwd");

if (pwd.equals(pw)) // == : 기본자료형에서만 가능 => 클래스와 클래스의 비교는 equals() 메소드를 사용
// 객체변수1.equals(객체변수1) => 같다면 true 틀리면 false
{
	String sql1 = "update board1 set name=?, title=?, content=? where id=?";
	PreparedStatement pstmt1 = conn.prepareStatement(sql1);

	pstmt1.setString(1, name);
	pstmt1.setString(2, title);
	pstmt1.setString(3, content);
	pstmt1.setString(4, id);

	pstmt1.executeUpdate();
	pstmt1.close();
	conn.close();

	response.sendRedirect("content2.jsp?id=" + id);
}

else {
%>
<script>
	alert("비밀번호 아님");
	history.back();
</script>
<%
}
%>


</head>
<body>

</body>
</html>