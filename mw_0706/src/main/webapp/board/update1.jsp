<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="board.BoardDao" %>
	<%
		BoardDao bd = new BoardDao();
		ResultSet rs = bd.content(request);
		rs.next();
		int ck=1004;
		if(request.getParameter("ck")==null || ck==1004){
			ck=1004;
			
			
		 }
		else if(Integer.parseInt(request.getParameter("ck")) == 789798) {
		
	%>
		<script>
			alert("비밀번호 오류");
			<%-- document.getElementById("ti").value="<%= title%>"; --%>
			<%-- document.getElementById("na").value="<%=name%>"; --%>
			<%-- document.getElementById("co").innerText="<%=content%>";  --%>
		</script>
	<%
	} 
	%>
		
			
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr,td{
	border : 1px solid black;
}
</style>
<script>
	
 	pee = document.getElementById("bb").value;
	function view(my){
		
		pe = document.getElementById("aa").style.visibility;
		
		
		
		if(pe == "hidden"){
			document.getElementById("aa").style.visibility="visible";
			document.getElementById("bb").value="수정버튼";
			if(pee == "수정버튼")
				my.submit();
			
		}
		
		else{
			document.getElementById("aa").style.visibility="hidden";
			
		}
		
	}
	

</script>
</head>
<body >
	
	 <form method="post" action="update_ok.jsp" >
	 <input type="hidden" name="id" value="<%=rs.getInt("id") %>">
	 <table width="500" height="600" align="center">
	 <tr>
	 <td>제목</td>
	 <td><input type="text" name="title" id="ti" value="<%=rs.getString("title")%>"></td>
	 <td>작성자</td>
	 <td><input type="text" name="name" id="na" value="<%=rs.getString("name") %>"></td>
	 </tr>
	 <tr>
	 <td height="500">내용</td>
	 <td colspan="3"><textarea cols="60" rows="30" id="co" name="content"><%=rs.getString("content")%></textarea></td>
	 </tr>
	 <tr id="aa" style="visibility:hidden;">
	 <td>비밀번호</td>
	 <td colspan="3"><input type="password" id="pwd" name="pwd"></td>
	 </tr>
	 <tr>
	 <td colspan="4" align="center"><input type="button" id="bb" onclick="view(this.form)" value="수정"></td>
	 </tr>
	  
	 
	 
	 </table>
	 
	 
	
	
	 </form>
</body>
</html>
