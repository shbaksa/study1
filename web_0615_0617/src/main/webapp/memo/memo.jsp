<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // Db연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // 쿼리 생성
    String sql="select * from memo order by id desc";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    
    // 쿼리 실행 => ResultSet
    ResultSet rs=pstmt.executeQuery();  // executeUpdate() : 실행
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function upmemo(id,name,content)
   {
	   //- action에 문서를 수정해주는 문서로 변경
	   document.pkc.action="memo_update.jsp";
	   //- 수정시 필요한 id값을 form태그내에 추가
	   document.pkc.id.value=id;
	   //- '글쓰기'버튼의 글자  ' 글 수정' 변경
	   document.pkc.submit.value="글 수정";
	   //- 이름과 내용을 입력폼 안에 넣기
	   document.pkc.name.value=name;
	   document.pkc.content.value=content;
   }
 </script>
</head>
<body> <!-- 0615/memo/memo.jsp -->
  <!-- 메모장 입력 폼 -->
   <form name="pkc" method="post" action="memo_ok.jsp">
     <input type="hidden" name="id">
     <table width="530" align="center">
       <td> <input type="text" name="name" size="4" placeholder="이 름"> </td>
       <td> <input type="text" name="content" size="40" placeholder="간단한 글을 올려주세요"> </td>
       <td> <input type="password" name="pwd" size="4" placeholder="비밀번호"> </td>
       <td> <input type="submit" name="submit" value="글쓰기"> </td>
     </table>
   </form>
  <!-- 메모장 내용 출력부분 -->
  <table width="530" align="center">
<%
     // ResultSet에 있는 내용 출력
   while(rs.next())
   {
%>
   <tr>
    <td onclick="upmemo(<%=rs.getInt("id")%>,'<%=rs.getString("name")%>','<%=rs.getString("content")%>')"> <%=rs.getString("name")%> </td>
    <td> <%=rs.getString("content")%> </td>
    <td onclick="location='delete.jsp?id=<%=rs.getInt("id")%>'"> <%=rs.getString("writeday")%> </td>
   </tr>
<%
   }
%>
  </table>
 
</body>
</html>





