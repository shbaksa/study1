<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 	table {
 		border: 1px solid ;
        border-collapse: collapse;
 	}
 	th, td {
        border-bottom: 1px solid #444444;

      }
      #del {
  	display:none;
  	}
     
 </style>
 <script>
  
 
  function view() { 
	  document.getElementById("del").style.display="table-row";
  }
 </script>
</head>
<body>
	<!-- content.jsp => 하나의 레코드만 읽어와서 출력 -->

	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");

	// request
	String id = request.getParameter("id");
	
	// readnum 증가시키기
	/*
	String sql2 = "update board1 set readnum=readnum+1 where id=?";
	PreparedStatement pstmt2 = conn.prepareStatement(sql2);
	pstmt2.setString(1,id);
	pstmt2.executeUpdate();
	*/
	// 쿼리 생성
	String sql = "select * from board1 where id=?";

	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);

	// 쿼리 실행 => ResultSet => 출력
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	%>

	<table width="1000" border="1" align="center" >
		<tr >
			<td >제목</td>
			<td colspan="7"><%=rs.getString("title")%></td>
			
				<td colspan="1" width="10" align="right"><form method="post" action="update.jsp?id=<%=rs.getString("id")%>">
					<input type="submit" value="수정">
				</form></td>
		</tr>
		<tr>
			<td >작성자</td>
			<td colspan="8"><%=rs.getString("name")%>
		</tr>
		<tr>
			<td >작성일</td>
			<td colspan="6"><%=rs.getString("writeday")%>
			<td colspan="1" width="50">조회수</td>
			<td><%=rs.getString("readnum")%>
		</tr>
		<tr height="200" >
			<td >내용</td>
			<td colspan="8"> <textarea rows="20" cols="80"> <%=rs.getString("content")%> </textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2"  align="left">
				<a href="#" onclick="view()"> <input type="button" value="삭제"></a>
			</td>
			<td colspan="7" align="right">
			<form method="post" action="list.jsp">
			<input type="submit" value="뒤로가기">
			</form>
			</td>
		</tr>
		<tr id="del">
		<td colspan="9" align="center">
		<form method="post" action="delete2.jsp"> 
		 <input type="hidden" name="id" value="<%=rs.getString("id")%>">
		
		 비번 <input type="password" name="pwd"> <input type="submit" value="삭제"></form> </td>
		</tr>
		
		
	</table>

</body>
</html>