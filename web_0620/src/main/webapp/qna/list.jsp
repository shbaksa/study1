<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // qna테이블에 읽어와서 body에 출력
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // 쿼리 생성
    String sql="select * from qna order by grp desc , seq asc";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    
    // 쿼리 실행 => ResultSet
    ResultSet rs=pstmt.executeQuery();
    
    // body에 rs를 출력
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   td {
     font-size:12px;
   }
 </style>
</head>
<body>
  <table width="600" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 이 름 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
      <td> grp </td>
      <td> depth </td>
      <td> seq </td>
    </tr>
    
  <%
  while(rs.next())
  {
	  String str="";
	  if(rs.getInt("depth") != 1)
	  {
		  // depth의 크기만큼 빈칸을 추가 => &nbsp;
		  for(int i=1;i<rs.getInt("depth");i++)
		  {
			  str=str+"&nbsp;&nbsp;";
		  }
		  
		  str=str+"└";
		  
		  
		  
	  }
	  
  %> 
    <tr>
      <td> <%=str%><a href="readnum.jsp?id=<%=rs.getInt("id")%>"> <%=rs.getString("title")%> </a></td>
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getString("readnum")%> </td>
      <td> <%=rs.getString("writeday")%> </td>
      <td> <%=rs.getInt("grp") %> </td>
      <td> <%=rs.getInt("depth") %> </td>
      <td> <%=rs.getInt("seq") %> </td>
    </tr>
  <%
  }
  %>  
  </table>
</body>
</html>
<% 
    // close
%>