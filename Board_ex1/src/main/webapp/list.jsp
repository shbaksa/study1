<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<link rel="stylesheet" href="css/jh.css">
<style>
#search
{
	width:20px;
	height:17px;
	border:hidden;
	background-image:url("img/search.jpg");
}
</style>
<%

	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	String none = request.getParameter("none"); 
	ResultSet rs;
	PreparedStatement pstmt;
	
	int pag;
	int rowpag;
	if(request.getParameter("pag") == null)
	{
		pag = 1;
		String sql = "select * from board2 order by id desc limit 0,10";
	 	pstmt = conn.prepareStatement(sql);
	 	
	 	pstmt.executeUpdate();
	 	
	 	rs = pstmt.executeQuery();		
	
	}
	else if(request.getParameter("pag").equals("0"))
	{
		pag = 1;
		String sql = "select * from board2 order by id desc limit 0,10";
	 	pstmt = conn.prepareStatement(sql);
	 	
	 	pstmt.executeUpdate();
	 	
	 	rs = pstmt.executeQuery();		
	
	}
	else
	{
	 		pag = Integer.parseInt(request.getParameter("pag"));	
	
	 	 	int index = (pag-1)*10; 	 	
 	
			String sql = "select * from board2 order by id desc limit ?,10";
 			pstmt = conn.prepareStatement(sql);
 			pstmt.setInt(1,index);
 		 	pstmt.executeUpdate();
 		 	
 		 	rs = pstmt.executeQuery();		 			
   	
 	
 }
	
	String sql_5 = "select * from board2";
	pstmt = conn.prepareStatement(sql_5);
	pstmt.executeUpdate();
 	ResultSet rs_5 = pstmt.executeQuery();		 	
		
	rs_5.last();  //열 끝으로
	int row_page = rs_5.getRow();  //열수
	rowpag = row_page/10;
	
		
 	int pagstart,pagend;
 	
	int clr=1;
	String back_1="";	

 	String sql_f = "select * from board2 order by gv desc";
 	PreparedStatement pstmt_f = conn.prepareStatement(sql_f);
 	ResultSet rs_f = pstmt_f.executeQuery();
 	
		
 	
 	
%>

<script>
	function none()
	{
		
		if(<%= none%> == 1)
			{
				alert("검색어를 입력하세요.");				
			}		
		else if(<%= none%> == 2)
		{
			alert("항목을 선택하세요.");				
		}	
	}
</script>

</head>
<body onload="none()">
<div> 자유 게시판 </div>
<hr>
<form  name="sub" method="post" action="write.jsp?nopw=0">
<input type ="submit" value="글쓰기">
</form>

<form id="ccc" method="post" action="list_sc.jsp">
<select name="search" id="ccb">
<option value="cc"> 선택 </option>
<option value="name"> 작성자 </option>
<option value="title"> 제목 </option>
</select>
 <input type="text" size="10" name="sc" id="cca">
 <input type="submit" id="search" value="">
</form>

<form  name="gv" method="post">
<table> 
<tr id="a2"> 
	
	<td width="70px">작성자</td>
	<td colspan="2" width="300px"> 제  목 (★ 비밀글) </td>
	<td width="45px"> 조회수 </td>
	<td> 날짜 </td>
	<td> 지역 </td>
	<td width="45px"> 추천수 </td>
	<td width="45px"> 비추 </td>
</tr>
<% for(int i=0; i<3; i++) {
			rs_f.next();
			
			int cmt = rs_f.getInt("id");
			String sql_c = "select * from comment where bid=?";
		 	PreparedStatement pstmt_c = conn.prepareStatement(sql_c);
		 	pstmt_c.setInt(1,cmt);
		 	
		 	ResultSet rs_c = pstmt_c.executeQuery();
		 	
		 	ResultSetMetaData md = rs_c.getMetaData();
		  	rs_c.last();  //열 끝으로	 		
						
			%>
			
			

<tr id="fm" style="background:#A9D0F5; text-align:center;">
	<td style="color:white"> <%= rs_f.getString("name") %> </td>
	<td colspan="2" style="text-align:left"> <% if(rs_f.getInt("secret")==0) { %> <a style="text-decoration:none; color:gray" href="#" onclick="return check(<%= rs_f.getInt("id")%>)"> ★ <%=rs_f.getString("title") %> [<%= rs_c.getRow()%>]   <img src="img/fire.png"></a>
	 <%} else {%>
		<a style="text-decoration:none; color:gray" href="readnum.jsp?id=<%= rs_f.getInt("id")%>&secret=1"> <%=rs_f.getString("title") %> [<%= rs_c.getRow()%>]  <img src="img/fire.png"></a><%} %></td>
	<td style="color:white"> <%= rs_f.getInt("readnum") %> </td>
	<td style="color:white"> <%= rs_f.getString("writeday") %> </td>
	<td style="color:white"> <% switch(rs_f.getInt("area"))
	{ case 1 : %> 경기 <% break;
				  case 2 : %> 서울 <% break;
				  case 3 : %> 강원 <% break;
				  case 4 : %> 경상 <% break;
				  case 5 : %> 전라 <% break;
				  case 6 : %> 충청 <% break;
				  case 7 : %> 제주 <% break;
	 			 
 				}
			%>	</td>	
	<td style="color:#5882FA"> <%= rs_f.getInt("gv") %></td>
	<td style="color:red"> <%= rs_f.getInt("gvdown") %></td>
</tr>

<% rs_c.close();
pstmt_c.close();	
}

	while(rs.next()){ 
	
		clr++;
		if(clr%2 == 1)
		{
			back_1="style='background:white'";
		}
		else
		{
			back_1="style='background:white'";
		}
		
	 	int cmt = rs.getInt("id");
		String sql_c = "select * from comment where bid=?";
	 	PreparedStatement pstmt_c = conn.prepareStatement(sql_c);
	 	pstmt_c.setInt(1,cmt);
	 	
	 	ResultSet rs_c = pstmt_c.executeQuery();
	 	
	 	ResultSetMetaData md = rs_c.getMetaData();
	  	rs_c.last();  //열 끝으로	 		
	 
			
%>

<tr id="a1" <%= back_1 %>>
	<td style="color:gray"> <%= rs.getString("name") %> </td>
	<td colspan="2" style="text-align:left"> <% if(rs.getInt("secret")==0) { %> <a style="text-decoration:none; color:black" href="#" onclick="return check(<%= rs.getInt("id")%>)"> ★ <%=rs.getString("title") %> [<%= rs_c.getRow()%>]</a>
	 <%} else {%>
		<a style="text-decoration:none; color:black" href="readnum.jsp?id=<%= rs.getInt("id")%>&secret=1"> <%=rs.getString("title") %> [<%= rs_c.getRow()%>]</a><%} %></td>
	<td style="color:gray"> <%= rs.getInt("readnum") %> </td>
	<td style="color:gray"> <%= rs.getString("writeday") %> </td>
	<td style="color:gray"> <% switch(rs.getInt("area"))
	{ case 1 : %> 경기 <% break;
				  case 2 : %> 서울 <% break;
				  case 3 : %> 강원 <% break;
				  case 4 : %> 경상 <% break;
				  case 5 : %> 전라 <% break;
				  case 6 : %> 충청 <% break;
				  case 7 : %> 제주 <% break;
	 			 
 				}
			%>	</td>	
	<td style="color:#5882FA"> <%= rs.getInt("gv") %></td>
	<td style="color:red"> <%= rs.getInt("gvdown") %></td>
</tr>
<%
rs_c.close();
pstmt_c.close();	
	
	}  %>
<br></br>
<tr id="a2">

<td colspan="8"> 
<%if(pag == 1)
{}else{%>
<a style="text-decoration:none; color:gray" href="list.jsp?pag=1">처음</a>
<%}
	int num=pag/10;
	if(pag%10 == 0)
	{
		num = num-1;
	}
	pagstart = (num*10)+1;
	pagend = pagstart+9;
		
	int ddpage = pag+10;
	
	if(ddpage > rowpag)
	{
		ddpage = rowpag;
	}
	
	if(pagend > rowpag)
	{
		pagend = rowpag+1;
	}
%>
	<%if(pag <= 10)
	{
		
	}
	else{%>
	<a style="text-decoration:none; color:black" href="list.jsp?pag=<%=pag-10%>"> ◀ </a>
	<a style="text-decoration:none; color:black" href="list.jsp?pag=<%=pag-1%>"> ◁ </a> 
	<%} %>
	<%
	
	for(int i=pagstart; i <= pagend; i++)
	{
		if(i == pag)
		{%>	
			<a style="text-decoration:none; color:Red; font-weight:bold;" href="list.jsp?pag=<%=i%>"> <%=i%></a>	
		<% }
		else
		{
		%>
		<a style="text-decoration:none; color:blue" href="list.jsp?pag=<%=i%>"> <%=i%></a>
		<%}
	}
	
	
%>

<%if(pag > rowpag ) 
{
}
else if(pag == rowpag )
{ %>
	<a style="text-decoration:none; color:black" href="list.jsp?pag=<%=pag+1%>"> ▷ </a>
<% }
	else{%>
	<a style="text-decoration:none; color:black" href="list.jsp?pag=<%=pag+1%>"> ▷ </a>
	<a style="text-decoration:none; color:black" href="list.jsp?pag=<%=ddpage%>"> ▶ </a>
<%}%>
&nbsp;<a style="text-decoration:none; color:gray" href="list.jsp?pag=<%=rowpag+1%>">끝</a>
 </td>

 </tr>
</table>



</form> <%
rs.close();
pstmt.close();
rs_f.close();
pstmt_f.close();
conn.close();


%>
<script>
	function check(id)
		
	{
			alert("비밀글입니다."); 
			var option = "width = 500px;, height = 200px; left = 300px; top=300px; location=center;"
			var name = "PASSWORD"
			let url = "password.jsp?id=";
			window.open(url+id,name,option);
			document.list.submit();
			window.opener.location.href="list.jsp";			
	}
</script>


</body>
</html>