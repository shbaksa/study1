<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234");
	
	String sql = "select * from multi";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	%>
</head>
<style>
	#aa {
		display:inline;
	}
</style>
<script>
	function chg(n) {
		
		if(n==0) // 입력모드
		{
			document.pkc.action="multi_input_ok.jsp";
			document.pkc.submit.value="전송";
		}
		else	// 수정모드 
			{
			document.pkc.action="multi_update_ok.jsp";
			document.pkc.submit.value="수정";
			}
	}

</script>
<body>	<!-- 0615/mulit_input.jsp : mulit 테이블에 이름과 나이를 입력하는 폼 -->
	
	<!-- 하나로 합친 폼 : action을 변경, submit의 value도 변경 -->
	
	<button onclick="chg(0)" type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off">
   입력
</button>
	<button onclick="chg(1)" type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off">
 	수정
</button>

	
	<!-- 
	<form name="pkc" method="post" action="multi_input_ok.jsp">
	<input type="text" name="id" size="2">
	<input type="text" name="name" placeholder="이름" size="4">
	<input type="text" name="age" placeholder="나이" size="4">
	<input type="submit" name="submit" value="전송">
	</form> -->
	
	<hr>
	<% while(rs.next()) { %>
	<span><h3 id="aa"><%=rs.getInt("id") %></h3></span>
	<span><h3 id="aa"><%=rs.getString("name") %></h3> </span>
	<span><h3 id="aa"><%=rs.getString("age") %></h3></span> <p>
	<% } %>
	<hr>
	<form name="pkc" method="post" action="multi_input_ok.jsp">
	<input type="text" name="id" size="2">
	<input type="text" name="name" placeholder="이름" size="4">
	<input type="text" name="age" placeholder="나이" size="4">
	<input type="submit" name="submit" value="전송">
	</form>
	<hr>
	<div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input onclick="chg(0)" type="radio" name="options" id="option1" autocomplete="off" checked> 입력
  </label>
  <label class="btn btn-secondary">
    <input onclick="chg(1)" type="radio" name="options" id="option2" autocomplete="off"> 수정
  </label>
  
</div>
	
	
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
</body>
</html>