<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% String none = request.getParameter("none"); %>
<style>

table {
		border : 1px solid black;
		font-size : 13px;
		
	}
	td {
		border-right : 1px solid black;
		border-top : 1px solid black;
	}
	td:last-child {
		border-right : none;
	}
	tr {
		border-top : 1px solid black;
		border-bottom : 1px solid black;
	}
</style>

<script>
	function al() {
		
		if (!document.pkc.name.value){		
			alert("이름빈칸");
			document.pkc.name.focus();
			return false;
			
		}
	
		else if(!document.pkc.mail.value){
			
			alert("메일빈칸");
			document.pkc.mail.focus();
			return false;
		}		
	}
	function check() {
		if(<%=none%> == 1){
			alert("제목빈칸");			
		}
	}

</script>
</head>
<body onload="check()">
	
	<form name="pkc" method="post" action="write_ok.jsp" onsubmit="return al()" >
	<table width="800" height="520" align="center">	
	<caption><h1>게시판 글쓰기 </h1></caption>
	<tr> <!-- 4 -->
	<td style="border-top:none;" width="100" height="30" align="center"><h4>제목</h4></td> 
	<td style="border-top:none;"><input type="text" name="title" size="40" ></td>
	<td style="border-top:none;" align="center"><h4>비밀번호</h4></td>
	<td style="border-top:none;"><input type="password" name="pwd"></td>
	</tr>
	<tr> <!-- 4 -->
	<td height="30" align="center"><h4>작성자</h4></td> 
	<td><input type="text" name="name" size="10"> </td>
	<td align="center"><h4>이메일</h4></td>
	<td><input type="text" name="mail" size="40"> </td>
	</tr>
	<tr> <!-- 2 -->
	<td align="center"><h4>내용</h4></td>
	<td colspan="3"><textarea cols="100" rows="25" name="content"> </textarea></td>
	</tr>
	<tr> <!-- 1 -->
	<td colspan="4" height="30" align="center"><input type="submit" value="글작성"></td>
	</tr>
	</table>
	</form>
	
</body>
</html>