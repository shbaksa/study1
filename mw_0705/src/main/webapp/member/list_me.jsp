<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.Member_Dao" %>
<%@page import="java.sql.ResultSet"%>   
<%
	Member_Dao md = new Member_Dao();
	
	ResultSet rs = md.list();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	tr,td {
	border:1px solid black;
	text-align:center;
	}
	
</style>
<script>
	
	
	let proc=0;

	function view(i,id){
			var na;
			var ag;

			
			switch(proc){
			
			case 0 : 
				document.getElementsByClassName("nn")[i].innerHTML="<input type='text' size='4' id='yy' name='name'>";
				document.getElementsByClassName("mm")[i].innerHTML="<input type='text' size='4' id='tt' name='age'>";
				proc++;
				break;
			case 1 :
				na = document.getElementById("yy").value; 
				ag = document.getElementById("tt").value;
				
				document.getElementsByClassName("qq")[i].innerHTML="<input type='button' onclick='"+open(na,ag,id)+"' value='전송'>";
				proc = 0;
				break;
			}
		
			
	}
	function open(na,ag,id){
		alert(na+ag);
		location="member_update_ok.jsp?id="+id+"&name="+na+"&age="+ag;
	}
	

</script>

</head>
<body>	<!-- list.jsp -->
	
	<!-- member테이블의 내용을 select 해서 전부 출력 -->
	<!-- 테이블 출력 -->
	<table width="500" align="center">
	<caption><h1>회원목록</h1></caption>
	<tr>
	<td>이름</td>
	<td>나이</td>
	<td>수정</td>
	<td>삭제</td>
	</tr>
	<%
	int i=0;
	while(rs.next()) {%>
	
	
	<tr>
	<td id="aa<%=rs.getInt("id")%>" class="nn"> <%=rs.getString("name") %> </td>  
	<td id="bb<%=rs.getInt("id")%>" class="mm"> <%=rs.getInt("age") %> </td>
	<td><input class="qq" type="button" onclick="view(<%=i%>,<%=rs.getInt("id") %>)" value="수정"> </td>
	<td><input type="button" onclick="location='member_delete.jsp?id=<%=rs.getInt("id") %>'" value="삭제"></td>
	</tr>

	<% i++; } %>
	
	<tr>
	<td colspan="4" align="center"><input type="button" onclick="location='member_input.jsp'" value="입력"></td>
	</tr>

	</table>
	

	

	

</body>
</html>