<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="board.BoardDao" %>
	<%
		String title="";
		String name="";
		String content="";
		String id="";
		int ck=0;
		if(request.getParameter("ck")==null){
			ck=0;
			BoardDao bd = new BoardDao();
			ResultSet rs = bd.content(request);
			rs.next();
			title = rs.getString("title");
			name = rs.getString("name");
			content = rs.getString("content");
			id = rs.getString("id");
		 }
		else if(Integer.parseInt(request.getParameter("ck")) == 1) {
		title = request.getParameter("title");
		name = request.getParameter("name");
		content = request.getParameter("content");
		id = request.getParameter("id");
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
	
	function view(my){
		
		var pe = document.getElementById("aa").style.visibility;
		
		
		if(pe == "hidden"){
			document.getElementById("aa").style.visibility="visible";
			my.submit();
			return true;
		}
		
		else{
			document.getElementById("aa").style.visibility="hidden";
			my.submit();
			return false;
		}
			
		
		
		
	}

</script>
</head>
<body>
	
	 <form method="post" action="update_ok.jsp" onsubmit="return view(this.form)">
	 <input type="hidden" name="id" value="<%=id %>">
	 <table width="500" height="600" align="center">
	 <tr>
	 <td>제목</td>
	 <td><input type="text" name="title" id="ti" value="<%=title%>"></td>
	 <td>작성자</td>
	 <td><input type="text" name="name" id="na" value="<%=name %>"></td>
	 </tr>
	 <tr>
	 <td height="500">내용</td>
	 <td colspan="3"><textarea cols="60" rows="30" id="co" name="content"><%=content%></textarea></td>
	 </tr>
	 <tr id="aa" style="visibility:hidden;">
	 <td>비밀번호</td>
	 <td colspan="3"><input type="password" id="pwd" name="pwd"></td>
	 </tr>
	 <tr>
	 <td colspan="4" align="center"><input type="button" onclick="view(this.form)" value="수정"></td>
	 </tr>
	  
	 
	 
	 </table>
	 
	 
	
	
	 </form>
</body>
</html>
