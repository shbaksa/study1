<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
     // gesipan테이블에 모든 레코드를 읽어와서 출력
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
     String db="jdbc:mysql://localhost:3306/first";
     Connection conn=DriverManager.getConnection(db,"root","1234");
     
     // 쿼리 생성
     String sql="select * from upload order by id desc";
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
     
     // 쿼리 실행
     ResultSet rs=pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #pkc {
     position:absolute;
     left:300px;
     top:200px;
     visibility:hidden;
   }
 </style>
 <script>
  function view(my) 
  {
	// id="pkc"태그안에 있는 img태그의 src속성에 그림파일을 준다
	//alert(my.src);
	document.getElementById("aa").src=my.src;
	// id="pkc"태그를 보이게
	document.getElementById("pkc").style.visibility="visible";
  }
  function hide(my)
  {
	  my.style.visibility="hidden";
  }
 </script>
</head>
<body>
   <div id="pkc" onclick="hide(this)"><img width="400" id="aa"></div>
   <table width="600" border="1" align="center">
     <tr>
       <td> 사 진 </td>
       <td> 제 목 </td>
       <td> 이 름 </td>
       <td> 조회수 </td>
       <td> 작성일 </td>
     </tr>
     
   <%
    while(rs.next())
    {
   %> 
     <tr>   
       <td> <img onclick="view(this)" src="img/<%=rs.getString("fname") %>" width="40"> </td>
       <td> <a href="readnum.jsp?id=<%=rs.getString("id")%>"> <%=rs.getString("title")%> </a></td>
       <td> <%=rs.getString("name")%> </td>
       <td> <%=rs.getString("readnum")%> </td>
       <td> <%=rs.getString("writeday")%> </td>
     </tr>     
   <%
    }
   %>
     <tr>
       <td colspan="4" align="right"> <a href="write.jsp"> 글쓰기 </a> </td>
     </tr>
   </table>
</body>
</html>
<%
    rs.close();
    pstmt.close();
    conn.close();
%>