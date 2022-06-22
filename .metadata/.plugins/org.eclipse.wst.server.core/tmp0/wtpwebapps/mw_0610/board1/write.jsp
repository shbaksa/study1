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
 </style>
</head>
<body>
	<!-- write.jsp (입력폼테크) -->

	<form method="post" action="write_ok.jsp">
		<table width="1000"  border="1" >
			<tr>
				<td> 제목 </td>
				<td><input type="text" name="title" size="40"></td>
				<td> 비밀번호</td>
				<td><input type="password" name="pwd" size="4"></td>
			</tr>
			<tr>
				<td> 이름</td>
				<td colspan="3"><input type="text" name="name" size="4"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td colspan="3"><textarea rows="20" cols="80" name="content"></textarea></td>
			</tr>
			
				<td colspan="4" align="right">
					<input type="submit" value="저장">
				</td>
				
			</tr>

		</table>
	</form>

</body>
</html>