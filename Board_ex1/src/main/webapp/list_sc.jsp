<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<style>
body
{
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left: 50px;
	padding-right: 50px;
	font-size: 13px;
	font-family: "Malgun Gothic","맑은 고딕",helvetica,"Apple SD Gothic Neo",sans-serif;
	marigin : 0;
	background-color: white;
}
table
{
	width:100%;
	border-collapse: seperate;
	border-spacing: 0 8px;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
}

#a2	
{
	width:100%;
	border: hidden;
	border-collapse: seperate;
	background : ivory;
	text-align:center;
	color:gray;
	}

#a1 
	{
		text-align:center;
		margin:0;
}
	#a1 td
	{
		padding-top : 9px;
		border-top : 1px solid lightgray;
	}
div{

	border-radius:5px;
	border : hidden;
	background: linear-gradient(to left,white, #5882FA);
	font-size : 35px;
	color : white;
	text-align : left;	
	padding-top: 3px;
	padding-bottom: 5px;
	padding-left: 10px;
}

input[type=submit]
{
	width:80px;
	height:20px;
	background:white;
	border:1px solid gray;
	border-radius:10px;
	padding-top : 2px;
	display: inline;
}
input[type=submit]:hover
{
	width:80px;
	height:20px;
	color:white;
	background:gray;
	border:1px solid gray;
	border-radius:10px;
	padding-top : 2px;
	display: inline;
}
input[type=button]
{
	width:100px;
	height:30px;
	color:white;
	background:#819FF7;
	border:1px solid gray;
	border-radius:8px;
	padding-top : 2px;
	display: inline;
}
input[type=button]:hover
{
	width:100px;
	height:30px;
	color:white;
	background:#819FF7;
	border:2px solid black;
	border-radius:8px;
	padding-top : 2px;
	display: inline;
}
form
{
	display : inline;
 }
#search
{
	width:20px;
	height:17px;
	border:hidden;
	background-image:url("img/search.jpg");
}
#ccc
{
	margin-left:55%;
	width:200px;
	height:20px;
	border: 1px solid gray;
	border-radius:8px;
}
#ccb
{

	width:80px;
	height:15px;
	border:hidden;
}
#cca
{

	width:100px;
	height:14px;
	border:hidden;
}


</style>
<%

	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");

	String sc = request.getParameter("sc");
	String search = request.getParameter("search");
	
	
	String sql = "select * from board2";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	ResultSet rs = pstmt.executeQuery();
	
	
	if(search.equals("title"))
	{
		 	sql = "select * from board2 where title=?";
 	 	 	pstmt = conn.prepareStatement(sql);
 	 	 	pstmt.setString(1,sc);
 	 	 	pstmt.executeUpdate();
 	 	 	rs = pstmt.executeQuery();
	}
	else if(search.equals("name"))
	{
		 	sql = "select * from board2 where name=?";
 	 	 	pstmt = conn.prepareStatement(sql);
 	 	 	pstmt.setString(1,sc);
 	 	 	pstmt.executeUpdate();
 	 	 	rs = pstmt.executeQuery();
 	}
	else if(search.equals("cc"))
	{
			response.sendRedirect("list.jsp?none=2");
	}
	else 
	{
		response.sendRedirect("list.jsp?");
}
 	int comment=0;
 	int userid=1;
%>

</head>
<body>
<div> 자유 게시판 </div>
<hr>
<form  name="sub" method="post" action="write.jsp?nopw=0">
<input type ="submit" value="글쓰기">
</form>
<form name="sub" method="post" action="list.jsp">
<input type ="submit" value="목록">
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
	<td colspan="2" width="300px" > 제  목 (★ 비밀글) </td>
	<td width="45px"> 조회수 </td>
	<td> 날짜 </td>
	<td> 지역 </td>
	<td width="45px"> 추천수 </td>
	<td width="45px"> 비추 </td>
</tr>
<% 
	int clr=1;
	String back_1="";
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
		
	 	
	 	String sql_c = "select * from comment where bid=?";
	 	PreparedStatement pstmt_c = conn.prepareStatement(sql_c);
	 	pstmt_c.setInt(1,clr-1);
	 	pstmt_c.executeUpdate();
	 	
	 	ResultSet rs_c = pstmt_c.executeQuery();
	 	
	 	ResultSetMetaData md = rs_c.getMetaData();
	 	int column = md.getColumnCount(); // 칼럼수
	 	rs_c.last();  //열 끝으로
	 	int row = rs_c.getRow();  //열수
	 	
%>


<tr id="a1" <%= back_1 %>>
	<td style="color:gray"> <%= rs.getString("name") %> </td>
	<td style="color:black; text-align:left;" colspan="2"> <% if(rs.getInt("secret")==0) { %> <a style="text-decoration:none; color:black" href="#" onclick="return check(<%= rs.getInt("id")%>)"> ★ <%=rs.getString("title") %> [<%= row%>]</a>
	
	 <%} else {%>
		<a style="text-decoration:none; color:black" href="readnum.jsp?id=<%= rs.getInt("id")%>&secret=1"> <%=rs.getString("title") %> [<%= row%>]</a><%} %></td>
	<td style="color:gray"> <%= rs.getInt("readnum") %> </td>
	<td style="color:gray"> <%= rs.getString("writeday") %>
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
	<td style="color:#5882FA"> <%= rs.getInt("gv") %>
	<td style="color:red"> <%= rs.getInt("gvdown") %></td>
</tr>

<%}  %>
<br></br>
</table>



</form> <%
rs.close();
pstmt.close();
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