<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		function check()
		{
			if(document.pkc.pwd.value == "")
				{
					alert("비번입력");
					document.pkc.pwd.focus();
					return false;			
				}
			else{
				return true;
			}
			
		}
	</script>

 <style>
 	table {
 		border: 2px solid #black ;
        border-collapse: collapse;
 	}
 	th, td {
        border-bottom: 1px solid #444444;
        
        
      }
 </style>
</head>
<body>
	<%
	
	// 수정하고자 하는 레코드 하나를 읽어오기
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	request.setCharacterEncoding("utf-8");	
	// 쿼리 생성
	String sql = "select * from board1 where id=?";	
	// request값 (id)
	String id = request.getParameter("id");
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	// 실행
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	%>	
	<!-- 사용자가 기존의 값을 변경하는것 => 기존의 값을 폼태그에 출력(DB에서 읽어온다) -->
	<!-- 수정문서 == input문서 + 하나의 레코드를 읽어와서 폼에 넣는것 -->
	<table border="1" width="1000" align="center" >
	<form name="pkc" method="post" action="update_ok2.jsp" onsubmit="return check()">
	<input type="hidden" name="id" value="<%=rs.getString("id")%>">
	<tr>
	<td colspan="2" width="100">제목 </td>
	<td colspan="4"><input type="text" name="title" value="<%=rs.getString("title") %>"></td>
	</tr>
	<tr>
	<td colspan="2"  width="100">작성자</td>
	<td colspan="4"><input type="text" name="name" value="<%=rs.getString("name") %>"></td>
	</tr>
	<tr>
	<td colspan="2"  width="100">내용</td>
	<td colspan="4" ><textarea rows="20" cols="80" name="content"  value="<%=rs.getString("content")%>"><%=rs.getString("content")%></textarea></td>
	</tr>
	<tr>
	<td></td>
	<td align="right" colspan="3">비밀번호</td>
	<td align="right" > <input type="password" name="pwd"> </td>
	<td align="right" > <input type="submit" value="수정"> </td>
	</tr>
	</form>
	</table>
	

</body>
</html>