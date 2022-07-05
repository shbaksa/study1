<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="sungjuk.Sungjuk_Daoo" %>
	
	<%
		Sungjuk_Daoo sd = new Sungjuk_Daoo();
		
		ResultSet rs = sd.input();
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		text-align : center;
	}
	span{
		
		border : 1px solid black;
	}
	
	
	input[type=text]{
		border : none;
	}
</style>
	<script>
		function update_move(id){
			location="update.jsp?id="+id;
		}
		function del_move(id){
			location="delete.jsp?id="+id;
		}
		function del(){
			
			var pepsi = document.getElementById("del").style.visibility;
			
			if( pepsi == "hidden")
				document.getElementById("del").style.visibility="visible";
			else
				document.getElementById("del").style.visibility="hidden";
		}
	
	</script>
</head>
<body>
	
	<h1 align="center">성 적</h1>
	
	<div style="c">
	<span>이름</span>
	<span>국어</span>
	<span>영어</span>
	<span>수학</span>
	<span>총점</span>
	<span>평균</span>
	<span>수정</span>
	<span>삭제</span>
	</div>
	<%while(rs.next()){ %>
	<div>
	<span><%=rs.getString("name") %></span>
	<span><%=rs.getInt("kor") %></span>
	<span><%=rs.getInt("eng") %></span>
	<span><%=rs.getInt("mat") %></span>
	<span><%=rs.getString("tot") %></span>
	<span><%=rs.getString("avg") %></span>
	<span><input type="button" onclick="update_move(<%=rs.getInt("id")%>)" value="수정"></span>
	<span><input type="button" onclick="del_move(<%=rs.getInt("id") %>)" value="삭제"></span>
	</div>
	<% } %>
	
	<div>
	<span colspan="8" align="center"><input type="button" onclick="del()" value="성적입력">
	</span>
	<div id="del" style="visibility:hidden;">
	<form metion="post" action="write_ok_me.jsp" onsubmit="return write_move(this)">
	<span><input type="text" name="name" placeholder="이름"></span>
	<span><input type="text" name="kor" placeholder="국어점수"></span>
	<span><input type="text" name="eng" placeholder="영어점수"></span>
	<span><input type="text" name="mat" placeholder="수학점수"></span>
	<span colspan="4" align="center"><input type="submit" value="점수입력"></span>
	</form>
	</div>
	
	
	
	

</body>
</html>