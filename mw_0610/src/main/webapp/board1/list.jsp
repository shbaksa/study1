<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
      #aa {
      background : #D6FFFF; 
      }
 	</style>
 	<script>
 	
 		function ch()
 		{
 			var chk=0;
			for(i=0;i<4;i++)
				{
				if(document.ch.pay[i].checked) // 참이 발생되면 chk값은 1
					{
						chk=1;
					}
				}
 		}
 	
 	</script>
</head>
<body>	<!-- list.jsp -->

	<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	String sql="select * from board1";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	%>
	
	<table width="500" border="2" align="center" >
	<tr>
	<td></td>
	<td id="aa"> 제목</td>
	<td id="aa"> 작성자</td>
	<td id="aa"> 조회수</td>
	<td id="aa"> 작성일</td>
	</tr>
	<%
	while(rs.next()) { 
	%>
	<tr>
	<td><input type="checkbox" name="ch">
	<td><a href="readnum.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title") %> </a></td>
	<td><%=rs.getString("name") %></td>	
	<td><%=rs.getString("readnum") %>
	<td><%=rs.getString("writeday") %>
	</tr>
	<%
	} 
	%>
	<tr>
	<td align="right" colspan="5"> <form method="post" action="write.jsp"> <input type="submit" value="글쓰기" > </form></a></td>
	</tr>
	
	</table>

</body>
</html>