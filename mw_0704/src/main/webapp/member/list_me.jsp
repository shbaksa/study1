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
	
	function view(id,i,my){

		document.getElementsByClassName("bb")[i].innerHTML="<input type='text' id='a' name='name' placeholder='이름'>"; 
		var na = document.getElementById("a").value;
		document.getElementsByClassName("cc")[i].innerHTML="<input type='text' id='b' name='age' placeholder='나이'>";
		var ag = document.getElementById("b").value;
		alert(my.submit="up11(id,na,ag)");
		
	}
	function up11(id,na,ag){
		alert(na);
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
	<td  class="bb" >  <%=rs.getString("name") %></td>  
	<td  class="cc"> <%=rs.getInt("age") %></td>
	<td class="dd"><input type="button" onclick="view(<%=rs.getInt("id") %>,<%=i %>,this)" value="수정"> </td>
	<td><input type="button" onclick="location='member_delete.jsp?id=<%=rs.getInt("id") %>'" value="삭제"></td>
	</tr>
	
	
	
	
	<% i++; } %>
	<%rs.close(); 
	rs = md.list();%>
	<tr>
	<td colspan="4" align="center"><input type="button" onclick="location='member_input.jsp'" value="입력"></td>
	</tr>
	<%-- <%while(rs.next()){ %>
	<form  method="post" action="">	
	<tr style="visibility:hidden;" id="del<%=rs.getInt("id")%>">
	<td><input type="hidden" name="id"></td>
	<td><input type="text" name="name" placeholder="이름"></td>
	<td><input type="text" name="age" placeholder="나이"></td>
	<td><input type="submit" value="전송"></td>
	</tr>
	</form>
	<%} %>
	 --%>


	
	
	</table>
	

	

	

</body>
</html>