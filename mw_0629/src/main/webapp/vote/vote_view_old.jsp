<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
	
	<%
		// vote_view.jsp => 결과를 가져와서 알려준다
		// 전체투표자수, 각각의 투표자수
		
		// DB생성
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
   		Connection conn=DriverManager.getConnection(db,"root","1234");
   		
   		// 쿼리생성
   		String sql = "select *, p1+p2+p3+p4+p5 as tot from vote where id=1";
   		
   		// 심부름꾼
   		PreparedStatement pstmt = conn.prepareStatement(sql);
   		
   		// 쿼리실행
   		ResultSet rs = pstmt.executeQuery();
   		rs.next();
   		int p1=rs.getInt("p1");
   		int p2=rs.getInt("p2");
   		int p3=rs.getInt("p3");
   		int p4=rs.getInt("p4");
   		int p5=rs.getInt("p5");
   		double tot=rs.getDouble("tot");
   		
   		int chong=400;
   		
   		int per1=(int)(chong*(p1/tot));	// p1의 %을 계산한후 가로크기 px 저장
   		int per2=(int)(chong*(p2/tot));
   		int per3=(int)(chong*(p3/tot));
   		int per4=(int)(chong*(p4/tot));
   		int per5=(int)(chong*(p5/tot));
   		out.print(per1+" "+per2+" "+per3+" "+per4+" "+per5);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.food{
			display:inline-block;
			height:20px;
			border:1px solid red;
		}
	</style>
	<script>
		function lo(){
			location="vote_old.jsp";
		}
	</script>
</head>
<body>
		
		
		<table width="560" align="center" >
		<caption><h1>메뉴투표결과</h1></caption>
		<tr>
		<td width="100">순대국밥</td>
		<td> <span class="food" style="width:<%=per1%>px;"></span> </td>
		<td width="40"><%=p1 %></td>
		</tr>
		<tr>
		<td>부대찌개</td>
		<td> <span class="food" style="width:<%=per2%>px;"></span> </td>
		<td><%=p2 %></td>
		</tr>
		<tr>
		<td>짜장면</td>
		<td> <span class="food" style="width:<%=per3%>px;"></span> </td>
		<td><%=p3 %></td>
		</tr>
		<tr>
		<td>초 밥</td>
		<td> <span class="food" style="width:<%=per4%>px;"></span> </td>
		<td><%=p4 %></td>
		</tr>
		<tr>
		<td>김 밥</td>
		<td> <span class="food" style="width:<%=per5%>px;"></span> </td>
		<td><%=p5 %></td>
		</tr>
		<tr>
		<td colspan="2" align="right"> 총투표자 </td>
		<td><%=tot %></td>
		</tr>
		<tr>
		<td colspan="3"><input type="button" onclick="lo()" value="투표"></td>
		</tr>
		</table>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

</body>
</html>