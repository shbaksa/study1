<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
 	<style>
 	table {
 		border: 1px solid ;
        border-collapse: collapse;
 	}
 	 th, td {
        border-bottom: 1px solid #444444;
      }
     
      #aa {
      background : #D6FFFF; 
      }
      a {
      	color : black;
      	text-decoration:none;
      }
      a:hover {
      	text-decoration:underline;
      }
      #tt {
      background:#BDBDBD;
      }
      
 	</style>
 	<script>
 	
 		function ch()
 		{
 			var chk=0;
			for(i=0;i<4;i++)
				{
				if(document.ch.pay[i].checked) // 참이 발생되면 chk값은 1
					{
						chk=1;
					}
				}
 		}
 		function view(i)
 		{
 			location="list.jsp?pager="+i;
 			
 			document.getElementById("bb"+i).style.background="blue";
 			
 		}
 	
 	</script>
</head>
<body>	<!-- list.jsp -->

	<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	// request => 사용자가 원하는 페이지값
	int pager;
	if(request.getParameter("pager") == null){
		pager=1;
	}
	else if(request.getParameter("pager").equals("0")){
		pager=1;
	}
	else
	{
		pager = Integer.parseInt(request.getParameter("pager"));	
	}
	
	
	// 사용자가 원하는 페이지의 index값 만들기
	int index=(pager-1)*10;
	
	String sql="select * from board1 order by id desc limit ?,10";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,index);
	
	ResultSet rs = pstmt.executeQuery();
	
	%>
	
	<table width="900" border="2" align="center" >
	<tr>
	
	<td id="aa"> 제목</td>
	<td id="aa"> 작성자</td>
	<td id="aa"> 조회수</td>
	<td id="aa"> 작성일</td>
	</tr>
	<%
	while(rs.next()) { 
	%>
	<tr>
	
	<td><a href="readnum.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title") %> </a></td>
	<td><%=rs.getString("name") %></td>	
	<td><%=rs.getString("readnum") %>
	<td><%=rs.getString("writeday") %>
	</tr>
	<%
	} 
	%>
	<tr>
	<td align="right" colspan="4"> <form method="post" action="write.jsp"> <input type="submit" value="글쓰기" ></form></td>
	</tr>
	<tr>
	<td colspan="4" align="center">
		<!-- 페이징 출력(사용자를 위한 링크) -->
		<%
			// pstart 와 pend를 구하기
			int num=pager/10;
			if(pager%10 == 0)
			{
				num=num-1; // num--;
			}
			int pstart=num*10+1;
			int pend=pstart+9;	// 마지막 그룹에서는 pend값을 총페이지를 계산하여 처리가 필요
							 	// 마지막 그룹에서는 pend값을 총페이지값으로 변경
			// 총페이지를 구하기
			sql = "select ceil(count(*)/10) as chong from board1";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			int chong = rs.getInt("chong");
			if(pend > chong)
			{
				pend=chong;
			} 
		%>
		<!-- 이전페이지로 이동 (1,10) -->
		<!-- 이전 10페이지 이동 (이전 그룹) : 첫그룹에서는 링크 X-->
		<%if(pager!=0 & pager > 1 ){ %>
		<input type="button" onclick="location='list.jsp?pager=1'" value="처음">
		<% } %>
		
		<% if(pstart == 1){ %>
		<!-- <button onclick="a()">처음</button>
		<button onclick="a()">←←</button> -->
		<% } else { %>
		
		<input type="button" onclick="location='list.jsp?pager=<%=pstart-1 %>'" value="←←">
		<%-- <a href="list.jsp?pager=<%=pstart-1 %>"> << </a> --%>
		<% } %>
		
		
		<!-- 이전 1페이지 이동 : 현재페이지가 1페이지이면 링크 X -->
		<% if(pager==1) { %>
		<!-- <button onclick="a()">←</button> -->
		<%}
		else
		{
		%>
		<input type="button" onclick="location='list.jsp?pager=<%=pager-1%>'" value="←">
		<% } %>
		<%-- <a href="list.jsp?pager=<%=pager-1%>">←</a> --%>
		
		<% 	String str="";
			
			for(int i=pstart;i<=pend;i++) { 
			if(pager==i)
			{
				str="style='background:#B2EBF4;'";
			}
			else{
				str="";
			}
		%>
		<button id="tt" <%=str %>  onclick="location='list.jsp?pager=<%=i %>'"><%=i %></button>
		<%-- <a <%=str %> href="list.jsp?pager=<%=i%>" > <%=i %></a>   --%>
		<%-- <input type="button" onclick="location='list.jsp?pager=<%=i %>'"  value="<%=i %>" >  --%>
		<%-- <button onclick="view(<%=i%>)" id="bb<%=i%>"> <%=i %></button>  --%>
		<% } %>
		
		<!-- 다음 1페이지 이동 -->
		<%-- <a href="list.jsp?pager=<%=pager+1%>">→</a> --%>
		 <%if(pager==pend) { %>
		<!-- <button onclick="b()">→</button> -->
		<% }
		else{%>	
		<input type="button" onclick="location='list.jsp?pager=<%=pager+1 %>'" value="→">
		<%} %>
		<!-- 다음페이지로 이동 (1,10) -->
		<%if(pend==chong){ %>
		 <!-- <button onclick="b()">→→</button>
		<button onclick="b()">마지막</button>  -->
		<% }
		else{%>
		<input type="button" onclick="location='list.jsp?pager=<%=pend+1 %>'" value="→→">
		 
		 <% } %> 
		 <% if(pager < chong){ %>
		 <input type="button" onclick="location='list.jsp?pager=<%=chong %>'" value="마지막">
		 <%}
		 else if(pend == chong) {
		 %>
		 
		 <% } %>
	</td>
	</tr>
	</table>
	
	<script>
		function a(){
			alert("첫페이지입니다");
		}
		function b(){
			alert("마지막페이지입니다");
		}
		
	</script>
	
	
	
	
	
	
	
	
	
	
	
<!-- 	<form name="pkc" method="post" action="pager.jsp">
	<input type="hidden" name="pager" >	
	<input type="submit" name="submit" onclick="view(1)" value="1">	
	<input type="submit" name="submit" onclick="view(2)" value="2">	
	<input type="submit" name="submit" onclick="view(3)" value="3">	
	</form>
	
	<script>
		function view(n)
		{
			if(n==1){
				
				document.pkc.pager.value=1;
			}				
			else if (n==2){
			
				document.pkc.pager.value=2;
			}			
			else{
				
				document.pkc.pager.value=3;
			}			
		}
	</script> -->

</body>
</html>