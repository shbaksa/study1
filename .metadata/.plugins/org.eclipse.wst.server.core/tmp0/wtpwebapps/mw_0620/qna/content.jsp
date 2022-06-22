<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>

	<%
		
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String sql = "select * from qna where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
	
	%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
caption { 
			border-top : 1px solid black;
			border-bottom : 1px solid black;
			background : lightgray;
		}
		b {
			font-size : 64px;
		}
</style>
</head>
<body>
 
  <table width="500" align="center">
  <caption> <b>Q  n  A</b></caption>
     <tr>
       <td> 제목 </td>
       <td> <%=rs.getString("title")%> </td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <%=rs.getString("name")%> </td>
     </tr>
     <tr>
       <td> 내용 </td>
       <td> <%=rs.getString("content").replace("\r\n","<br>")%> </td>
     </tr>
     <tr>
       <td> 조회수 </td>
       <td> <%=rs.getString("readnum")%> </td>
     </tr>
     <tr>
       <td> 작성일 </td>
       <td> <%=rs.getString("writeday")%> </td>
     </tr>
     <tr>
       <td align="center" colspan="2">
        <a href="list.jsp">목록</a>
         <a href="rewrite.jsp?grp=<%=rs.getInt("grp")%>&depth=<%=rs.getInt("depth") %>&seq=<%=rs.getInt("seq")%>">댓글</a> 
         <!-- 현재글의 grp, depth, seq를 전달한다 --> 
         <!-- 전달받은 grp,depth,seq를 답글에서는 grp는 그대로 depth,seq는 +1씩 증가 -->
         </td>   
     </tr>
   </table>

</body>
</html>