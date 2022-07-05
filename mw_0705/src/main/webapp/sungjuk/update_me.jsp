<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="sungjuk.Sungjuk_Daoo" %>
	
	<%
		Sungjuk_Daoo sd = new Sungjuk_Daoo();
	
		ResultSet rs = sd.update(request);
		
		rs.next();
		
		

	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function move(my){
			name = my.name.value;
			kor = my.kor.value;
			eng = my.eng.value;
			mat = my.mat.value;
			if(name == "" || kor == "" || eng == "" || mat == ""){
				alert("빈칸");
				return false;
			}
			else
				return true;
		}
	
	</script>
</head>
<body>

		<form method="post" action="update_ok_me.jsp" onsubmit="return move(this)">
		<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
		이름 <input type="text" name="name" value="<%=rs.getString("name") %>">
		국어점수 <input type="text" name="kor" value="<%=rs.getInt("kor") %>">
		영어점수 <input type="text" name="eng" value="<%=rs.getInt("eng") %>">
		수학점수 <input type="text" name="mat" value="<%=rs.getInt("mat") %>">
		<input type="submit" value="수정점수">
		</form>
</body>
</html>