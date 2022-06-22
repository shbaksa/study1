<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#bb {
		visibility : hidden;
	}
	
</style>
<script>
	function view(bid) {
		document.getElementById("bb").style.visibility="visible";
		document.pkc1.bid.value=bid;
		
	}
</script>
</head>
<body>
 <%
//DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request
	String id = request.getParameter("id"); // board2테이블의 id값
	
	// 쿼리생성
	String sql = "select * from board2 where id=?";
	
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	
	// 쿼리실행 => resultset
	ResultSet rs =  pstmt.executeQuery();
	rs.next();	
	
	%>
 <table>
 <tr>
 <td>실험</td>
 </tr>
 
 <%
 
 while(rs.next()) { %>
 <tr>
 <td> <a href="#" name="pkc" id="bb" onclick="view(bid)"> <%=rs.getInt("id") %></a></td>
 </tr>
 <%} %>
</table>
<form name="pkc1" method="post" action="test_ok.jsp" >
<input type="text" value=<%=id %> >
id값 출력 <input type="text" id="bid">
<input type="submit" value="ㅇㅇ">

</form>

</body>
</html>