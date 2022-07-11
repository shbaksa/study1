<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="board.BoardDaoo" %>
	<%
		BoardDaoo bd = new BoardDaoo();
		ResultSet rs = bd.content(request);
		rs.next();
		 int ck=0; 
		
		
		
		
		if(request.getParameter("ck")==null){
			 ck=0; 
		}
		  else if(Integer.parseInt(request.getParameter("ck")) == 789789 ) {
			ck=789798;  
		/*  else if( request.getParameter("ck").equals("passwordcheck") ) {
			kc=789789; */
			
	%>
		<script>
			alert("비밀번호 오류");
			<%-- <%-- 
			document.getElementById("ti").value="<%= title%>";
			document.getElementById("na").value="<%=name%>";
			document.getElementById("co").innerText="<%=content%>";  --%> 
		</script>
	<%
	}  %> 
	
		
			
	
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
 
	function view(){
		
	 var pe = document.getElementById("aa").style.visibility; 
		

		if(pe == "hidden" || <%=ck%> == 789798 ){
			document.getElementById("aa").style.visibility="visible";
			document.getElementById("bb").style.display="none";
		}
		<%-- if(pe == "hidden" || <%=ck%> == 789798 ){
			document.getElementById("aa").style.visibility="visible";
			document.getElementById("bb").style.display="none";
		} --%>
	
	}
	
	

</script>
</head>
<body onload="view()">
	
	 <form method="post" action="update_ok.jsp">
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
	 <tr id="bb" style="visibility:visible;">
	 <td colspan="4" align="center"><input type="button" onclick="view()" value="수정"></td>
	 </tr>
	 <tr id="aa" style="visibility:hidden;">
	 <td>비밀번호</td>
	 <td colspan="3" align="center"><input type="password" id="pwd" name="pwd">
	 <input type="submit" value="수정"></td>
	 </tr>
	  
	 
	 
	 </table>
	 
	 
	
	
	 </form>
</body>
</html>
