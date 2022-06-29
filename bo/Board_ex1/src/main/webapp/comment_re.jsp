<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<style>
body
{
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left: 50px;
	padding-right: 50px;
	font-size: 14px;
	font-family: "Malgun Gothic","맑은 고딕",helvetica,"Apple SD Gothic Neo",sans-serif;
	marigin : 0;
	background-color: white;
}
table
{
	width:100%;
	border-collapse: seperate;
	border-spacing: 0 8px;

}

#a2	
{
	width:100%;
	border: hidden;
	border-collapse: seperate;
	background : white;
	text-align:center;
	color:gray;
	}

#a1 
	{
		text-align:center;
		padding-bottom:5px;
		color:gray;
}
	#a1 td
	{
		padding-top : 9px;
		border-top : 1px solid lightgray;
		border-bottom : 1px solid lightgray;
		padding-bottom:8px;
	}
#ff{

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

#b1	
{
	justify-content: center;
	margin-left: 200px;
	width: 600px;
	border-collapse: collapse;
	border-radius: 20px;
}
	#b1 td
	{
		padding : 5px;
	}
	

#c2{
	border-radius : 10px;
	border : 2px solid black;
	border-bottom : hidden;
	background: #2E2E2E;
	font-size : 40px;
	color : white;
	text-align : center;	
}

input[type=submit]
{
	width:100px;
	height:30px;
	background:white;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}
input[type=submit]:hover
{
	width:100px;
	height:30px;
	color:white;
	background:#81BEF7;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}

input[type=button]
{
	width:100px;
	height:30px;
	background:white;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}
input[type=button]:hover
{
	width:100px;
	height:30px;
	color:white;
	background:#81BEF7;
	border:1px solid lightgray;
	border-radius:10px;
	padding-top : 2px;
}
form 
{
	display:inline;
}

#aa
{
	visibility : hidden;
}
#a7
{
	visibility : hidden;
	border-top:hidden;
}
#a8
{
	visibility : hidden;
}
#a9
{
	visibility : hidden;
}
#a10
{
	visibility : hidden;
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
	margin-left:65%;
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
	
	String id = request.getParameter("id");
	String secret_1 = request.getParameter("secret");
	String chk = request.getParameter("chk");
	String bbid = request.getParameter("bbid");

	String sql = "select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
		
	String secret = rs.getString("secret"); 
	
	
	String sql_c = "select * from comment where bid=?";
	PreparedStatement pstmt_c = conn.prepareStatement(sql_c);
	pstmt_c.setString(1,id);
	pstmt_c.executeUpdate();
	
	ResultSet rs_c = pstmt_c.executeQuery();	
	
	
	
	
	%>
<meta charset="UTF-8">
<title>상세 내용</title>

 <script>
   function view()
   {
	   document.getElementById("aa").style.visibility="visible";
   }
   function view_1()
   {
	   document.getElementById("a7").style.visibility="visible";
   }
   function view_2()
   {
	   document.getElementById("a8").style.visibility="visible";
   }
   function view_3()
   {
	   document.getElementById("a9").style.visibility="visible";
   }
   function init()
   {
		<%
		
		if(chk != null)
		{
			%>
		alert("비밀번호가 틀립니다.");

	<%	} %>
   }
   function cucu(updown)
   {
	   if(updown==1)
	  {
			location.href="gv.jsp?id="+<%=rs.getInt("id")%>+"&up=1";   	 
	   }
	   else if(updown==2)
	  {
			location.href="gv.jsp?id="+<%=rs.getInt("id")%>+"&up=2";    	 
	   }
   }
    </script>

</head>
<body onload="init()">
<div id="ff"> 댓글수정 </div>

	<%
	
	if(secret.equals("0") && secret_1.equals("0"))
	{  %>
			<script>
			{
				alert("비밀글입니다."); 
			}
			</script>	
				
	<% 	
	
	}
	else
	{
		String name = rs.getString("name");
		String title = rs.getString("title");
		String content = rs.getString("content").replace("\r\n","<br>");
		int area = rs.getInt("area");
		String readnum = rs.getString("readnum");
		String writeday = rs.getString("writeday");

		
%> 

<table >

<tr id="a1"> <td width="300px" style="background:#CEECF5"> 작성자 </td> <td width="300px"> <%= name%> </td> 
 <td width="300px" style="background:#CEECF5"> 제  목 </td> <td width="300px"> <%= title%> </td> 
 <td width="300px" style="background:#CEECF5"> 조회수 </td> <td width="300px"> <%= readnum%> </td> 
 <td width="300px" style="background:#CEECF5"> 작성일 </td> <td width="300px"> <%= writeday%> </td> 
 <td width="300px" style="background:#CEECF5"> 지  역 </td> <td width="300px"> <% switch(area)
				{
				  case 1 : %> 경기 <% break;
				  case 2 : %> 서울 <% break;
				  case 3 : %> 강원 <% break;
				  case 4 : %> 경상 <% break;
				  case 5 : %> 전라 <% break;
				  case 6 : %> 충청 <% break;
				  case 7 : %> 제주 <% break;
		  			 
 				}
			%> </td> </tr>
<tr id="a1"> <td width="100px" style="background:#CEECF5"> 내  용 </td> <td colspan="9" width="800px" height="500px" style="background-color:white; text-align:left; color:#2E2E2E;"> <%= content%> </td> </tr>

<% } %>
<tr id="a1">
<td colspan="2"></td>
<td colspan="2"><img src="img/c1.png" onclick="cucu(1)"></td>
<td style="color:blue"><%=rs.getInt("gv") %></td>
<td style="color:red">-<%=rs.getInt("gvdown") %></td>
<td colspan="2"><img src="img/c2.png" onclick="cucu(2)"></td>  
<td colspan="2"></td>
</tr>
<tr style="background:white; margin-left:0;" id="a1">
<td colspan="10" >
 <form method="post" action="list.jsp" style="margin:10px;">
<input type="submit" value="목록">
 </form>
<form method="post" action="update.jsp?id=<%= id%>&secret=1">
<input type="submit" value="수정하기" style="margin:10px;">
 <input type="button" value="댓글입력"  style="visibility:visible; margin:10px;" onclick="view_1()" >
 <input type="button" value="삭제하기"  style="visibility:visible; margin:10px;" onclick="view()" >
 </form>
 <form name="pkc" id="aa" method="post" action="delete.jsp?id=<%=id %>" >
 <span> 암호 : <input type="password" name="pw" size="10" style="border-radius:5px; margin:10px;"> </span>
 <span><input type="submit" value="입력"  ></span>  
  </form>

  </td>
  </tr>
 </table>


  <table id="a2">
  <form method="post" action="comment_up.jsp?id=<%= id%>&bbid=<%= bbid%>">
 <tr style="background:#CEECF5; font-size:12px;" > <td style="text-align:center; ">작성자</td><td style="text-align:left;">댓글내용</td><td style="text-align:center">작성일</td></tr>
  <% while(rs_c.next()){ %>
   <tr> 
 <% if(rs_c.getInt("id") == Integer.parseInt(bbid)) {%>
  				 <td width="80px" style="background:white; border:1px solid lightgray; font-size:12px; font-weight:normal;  text-align:center; "> 
 				 <input type="text" size="3" value="<%= rs_c.getString("cname")%>" name="cname" style="border:hidden;"> </td> 
 				  <td style="background:white; font-size:12px; font-weight:normal; text-align:left; border:1px solid lightgray;">
 				 <input type="text" size="100" value="<%= rs_c.getString("ccontent")%>" name="ccontent" style="border:hidden;  ">  </td> 
 				<td width="100px" style="background:white; font-size:12px; font-weight:normal; text-align:center;"> <%= rs_c.getString("cday")%> </td> 
 				 <%} else{ %>  
 <td width="80px" style="background:white; font-size:12px; font-weight:normal;"> <%= rs_c.getString("cname")%> </td> 
 <td style="background:white; font-size:12px; font-weight:normal; text-align:left;"><%= rs_c.getString("ccontent")%></td> 
 <td width="100px" style="background:white; font-size:12px; font-weight:normal;  text-align:center;"> <%= rs_c.getString("cday")%> </td>
  <%} %> </tr> <% } %>
   </table>
    <tr><td><input type="submit" value="수정"></td></tr>
   </form>
   <form name="pkc" id="a7" method="post" action="comment.jsp?id=<%=id %>">
 <table>
 <tr> <td> <input type="text" size="10" name="cname" placeholder="작성자"></td>
 	    <td> <textarea cols="50" rows="1" name="ccontent" placeholder="댓글내용" ></textarea></td>
        <td> <input type="password" size="10" name="cpw" placeholder="password"></td>
        <td> <input type="submit" value="입력"></td>
  </tr>
  </table>
  </form>



  <%
  pstmt.close();
  pstmt_c.close();
  rs.close();
  rs_c.close();
  conn.close();%>
</body>
</html>