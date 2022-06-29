<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="jh.css">
<title> 글작성 </title>
</head>
<%
	String none = request.getParameter("none");
	
%>
 <script>
 	function check()
 	{
		if(<%=none%>==3)
			{
				alert("내용을 입력하세요.");			
			}
		else if(<%=none%>==2)
			{
				alert("제목을 입력하세요.");		
			}
		else if(<%=none%>==4)
			{
				alert("이메일을 입력하세요.")	;		
			}
		else if(<%=none%>==1)
			{
				alert("이름을 입력하세요.");			
			}
		else if(<%=none%>==5)
			{
				alert("암호을 입력하세요.");			
			}
 	}
 
 </script>
<body onload="check()">

<div id="ff"> 글작성 </div>

<form method="post" action="write_ok.jsp" >
<table id="a2" > 
<tr> 
	<td style="background:#A9D0F5"> 작성자</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <input type="text" name="name" size="30" style="border-radius:5px;"></td>
</tr>
<tr> 
	<td style="background:#A9D0F5"> 제  목</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <input type="text" name="title" size="30" style="border-radius:5px;"></td>
</tr>
<tr> 
	<td  style="background:#A9D0F5"> 내  용</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <textarea cols="100" rows="10" name="content" style="border-radius:5px;"></textarea></td>
</tr>
<tr> 
	<td style="background:#A9D0F5"> Password </td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <input type="password" name="pw" size="10" style="border-radius:5px;"></td>
</tr>
<tr> 
	<td style="background:#A9D0F5"> E-mail</td>
	<td colspan="7" style="text-align:left; padding-left:20px"> <input type="text" name="email" size="30" style="border-radius:5px;"></td>
</tr>
</table>
<p>
<input type="submit" value="뒤로가기" formaction="list.jsp">
<input type="submit" value="작성완료">
</form>


</body>
</html>