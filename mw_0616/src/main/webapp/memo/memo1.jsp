<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>    
   	
   	<%
		
   		// DB연결
   		Class.forName("com.mysql.jdbc.Driver");
  	 	String db="jdbc:mysql://localhost:3306/first";
    	Connection conn=DriverManager.getConnection(db,"root","1234");
   		
   		// 쿼리생성
   		String sql = "select * from memo order by id desc";
   		
   		// 심부름꾼
   		PreparedStatement pstmt = conn.prepareStatement(sql);
   		
   		// 쿼리실행 => ResultSet
   		ResultSet rs = pstmt.executeQuery(); // executeUpdate() : 실행
   		

   	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		function upmemo(id,name,content)
		{
			// action에 문서를 수정해주는 문서로 변경
			document.pkc.action="memo_update.jsp";
			
			// 수정시 필요한 id값을 form태그내에 추가
			document.pkc.id.value=id;
			
			// '글쓰기' 버튼의 글자를 '글수정'으로 바꾸기
			document.pkc.submit.value="글수정";
			
			// 이름과 내용을 입력폼 안에 넣기
			document.pkc.name.value=name;
			document.pkc.content.value=content;
		}
		
	</script>
</head>
<body>	<!-- 0615/memo/memo.jsp -->

	<!-- 메모장 입력 폼 -->
	<table width="550" align="center">
	<form name="pkc" method="post" action="memo_ok.jsp">	
	<input type="hidden" name="id">
	<td> <input type="text" name="name" size="4" placeholder="이름"> </td>
	<td> <input type="text" name="content" size="40" placeholder="간단한 글을 올려주세요"> </td>
	<td> <input type="password" name="pwd" size="4" placeholder="비밀번호"> </td>
	<td> <input type="submit" name="submit" value="저장"> </td>
	</form>
	</table>
	
	<table width="550" align="center">
	<!--  메모장 내용 출력부분 --> 
	<%
		// ResultSet에 있는 내용 출력
		while(rs.next()) {
	%>
	<tr>
	<td onclick="upmemo(<%=rs.getInt("id")%>,'<%=rs.getString("name")%>','<%=rs.getString("content")%>')"><%=rs.getString("name") %></td>
	<td><%=rs.getString("content") %></td>
	<td onclick="location=delete.jsp?id=<%=rs.getInt("id")%>" ><%=rs.getString("writeday") %></td>
	</tr>
	<%
		}
	%>
	</table>
	
</body>
</html>

<!-- 
	현재문서(브라우저) 					=>  다른문서로 이동

	a태그 문서명?변수=값&변수=값
	location 문서명?변수=값&변수=값  		전달할 값이 존재
	form태그 <input> 태그에 넣어서(value)	request.getParameter("변수")


	select 조회
	
	정렬
	
	order by 필드명 정렬방식    
				  ( desc[내림차순], asc[오름차순] )


	memo에서의 수정
	1. 이름을 클릭하였을때 동작
	2. 수정폼은 위에 존재하는 입력폼을 이용
	  - action에 문서를 수정해주는 문서로 변경
	  - 수정시 필요한 id값을 form태그내에 추가
	  - '글쓰기' 버튼의 글자를 '글수정' 바꾸기
	  - 이름과 내용을 입력폼 안에 넣기













 -->