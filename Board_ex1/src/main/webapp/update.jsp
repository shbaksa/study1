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
	

#c1{
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

<meta charset="UTF-8">
<title>상세 내용</title>

</head>
<body>
<div id="ff"> 수정하기 </div>
<hr>
<%
	
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
	Connection conn = DriverManager.getConnection(url,"root","0000");

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String secret_1 = request.getParameter("secret");
	
	String sql = "select * from board2 where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	
	String secret = rs.getString("secret"); 
	
	%>
	<script>
	function check()
	{
			var option = "width = 500px;, height = 200px; location =center;"
			var name = "PASSWORD"
			window.open("password.jsp?id=<%=id%>",name, option);
			document.list.submit();
	}
	</script>
	<%
		
	if(secret.equals("0") && secret_1.equals("0"))
	{  %>
			<script>
			{
				alert("비밀글입니다."); 
				check();				
			}
			</script>	
				
	<% 	
	
	}
	else
	{
		String name = rs.getString("name");
		String title = rs.getString("title");
		String content = rs.getString("content");
		int area = rs.getInt("area");
		String readnum = rs.getString("readnum");
		String writeday = rs.getString("writeday");
	
%> 
<form method="post" action="update_ok.jsp?id=<%= id%>&secret=0">
<table id="a1">

<tr id='a2'> <td style="background-color:#CEECF5"> 작성자 </td> <td > <%= name%> </td> 
<td style="background-color:#CEECF5"> 제  목 </td> <td > <input type="text" name="title" style="border:hidden;"value="<%= title%>"> </td> 
<td style="background-color:#CEECF5"> 조회수 </td> <td > <%= readnum%> </td> 
<td style="background-color:#CEECF5"> 작성일 </td> <td > <%= writeday%> </td> </tr>
<tr id='a2'> <td style="background-color:#CEECF5"> 지  역 </td> <td  colspan="9"> 
<input type="radio" name="area"  value="1" <%if(area == 1) {%>checked<%} %>> 경기
 <input type="radio" name="area" value="2"<%if(area == 2) {%>checked<%} %>> 서울
  <input type="radio" name="area" value="3"<%if(area == 3) {%>checked<%} %>> 강원
   <input type="radio" name="area" value="4"<%if(area == 4) {%>checked<%} %>> 경상
    <input type="radio" name="area" value="5"<%if(area == 5) {%>checked<%} %>> 전라
     <input type="radio" name="area" value="6"<%if(area == 6) {%>checked<%} %>> 충청
      <input type="radio" name="area" value="7"<%if(area == 7) {%>checked<%} %>> 제주 </td> </tr>
<tr id='a2'> <td style="background-color:#CEECF5"> 내  용 </td> <td colspan="9" style="background-color:white"><textarea cols="100" rows="10" name="content" style="border:hidden;"><%= content%></textarea> </td> </tr>

<% } %>
</table>
<p>
<input type="submit" value="취소" formaction="content.jsp?id=<%=id%>&secret=1">
<input type="submit" value="수정완료">
</form>

</body>
</html>