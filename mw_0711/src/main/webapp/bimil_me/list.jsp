<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
	<%
	
		BoardDao bd = new BoardDao();
		ResultSet rs = bd.list(request);
		
		// pstmt,pend를 구하기 위해 새로운 메소드를 호출
		int pstart = bd.getpage(request)[0];
		int chong = bd.getpage(request)[1];
		int pager = bd.getpage(request)[2];
		int pend = bd.getpage(request)[3];
		
		
		
		out.print("페이지시작 : "+pstart+" 페이지끝 : "+pend+" 현재페이지 : "+pager+" 총페이지 : "+chong);

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
a{
	text-decoration : none;
	font-size : 14px;
	color : blue;
}
#bimil_tag{
	position : absolute;
	visibility : hidden;
	
}
</style>
<script>
	function bimil(id){

		var x=event.pageX;
		var y=event.pageY;
		
		
		// x,y좌표에 폼태그를 보이게 하기
		document.getElementById("bimil_tag").style.visibility="visible";
		document.getElementById("bimil_tag").style.left=x+"px";
		document.getElementById("bimil_tag").style.top=y+"px";
		
		// id값을 폼태그의 hidden에 전달
		document.pkc.id.value=id;
	}

</script>
</head>
<body>
	<!-- 비밀글일 경우 나타낼 폼 태그 : 레이어 -->
	<div id="bimil_tag" >
	<form name="pkc" method="post" action="bimil_check.jsp">
	<input type="hidden" name="id">
	<input type="password" name="pwd" placeholder="비밀번호">
	<input type="submit" value="확인">	
	</form>
	</div>
	<table width="800" align="center">
	<caption><h1>게시판목록</h1></caption>
	<tr align="center">
	<td width="200">제목</td>
	<td width="50">작성자</td>
	<td width="50">조회수</td>
	<td width="80">작성일</td>
	</tr>
	<%while(rs.next()){ %>
	<tr align="center">
	
	<td align="left">
	<%if(rs.getInt("bimil")==0){ %>
	<a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a>
	<%} 
	 else {%>
	<a href="#" onclick="bimil(<%=rs.getInt("id")%>)"><%=rs.getString("title") %></a> <!-- 비밀글일 경우 -->
	<%} %>
	</td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getInt("readnum") %></td>
	<td><%=rs.getString("writeday") %></td>
	</tr>
	<%} %>
	<tr>
	<td colspan="4" align="center">
	<%if(pager!=0 && pager >1 ){ %>
	<a href="list.jsp?page=1">처음</a>
	<% } %>
	<% if(pstart==1) { %>     
    <% } 
	else {  %> 
      <a href="list.jsp?page=<%=pstart-1%>"> << </a>
    <% } %>
    <!-- 이전 1페이지 이동 : 현재페이지가 1페이지이면 링크 X -->
    <% if(pager==1) { %>  
    <% } 
    else{  %> 
     <a href="list.jsp?page=<%=pager-1%>"> < </a> 
    <% } %>
	<% String str="";
	for(int i=pstart;i<=pend;i++) {
		if(pager==i)
			str="style='color:red;'";
		else
			str="";%>
	<a <%=str%>href="list.jsp?page=<%=i%>"><%=i %></a>
	<% } %>
	<%if(pager == chong){ %>	
	<%} 
	 else{ %>
	<a href="list.jsp?page=<%=pager+1%>"> > </a>
	<%} %>
	<%if(chong==pend){ %>	
	<% }
	else {%>
	<a href="list.jsp?page=<%=pend+1%>"> >> </a>
	<% } %>
	<%if(pager < chong){ %>
	<a href="list.jsp?page=<%=chong%>"> 마지막 </a>
	<%}
	else if(pend == chong) {%>	
	<%} %>
	
	</td> 
	</tr>
	<tr>
	<td colspan="4" align="center"><input type="button" onclick="location='write.jsp'" value="글작성"></td>
	</tr>
	
	</table>

</body>
</html>
<% bd.close();%>