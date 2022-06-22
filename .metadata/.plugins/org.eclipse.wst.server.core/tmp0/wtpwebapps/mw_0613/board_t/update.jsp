<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%@page import="java.sql.*" %>
<%
    // 하나의 레코드를 읽어와서 아래의 폼에 넣어준다..
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
  
    // request
    String id=request.getParameter("id");
    
    // 쿼리 생성
    String sql="select * from board2 where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행 => ResultSet
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    // 폼에 출력
%>
 <script>
   function init()
   {
	   // radio
	   document.pkc.area[<%=rs.getInt("area")%>].checked=true;
	   // checkbox
	   //if(<%=rs.getInt("bimil")%>==1) 
	   //   document.pkc.bimil.checked=true;
	   
	   <% // 값 자체를 출력안되게 하고자 할때
	    if(rs.getInt("bimil")==1)
	    {
	   %>
	      document.pkc.bimil.checked=true;
	   <%
	    }
	   %>
	   
	   <%
	     if(request.getParameter("chk")!=null) // update_ok에서 이동시 chk값이 존재한다..
	     {
	   %>
	       alert("비밀번호가 틀립니다");
	   <%
	     }
	   %>
   }
  
 </script>
 <body onload="init()">  <!-- board2/update.jsp -->
 <form name="pkc" method="post" action="update_ok.jsp">
  <input type="hidden" name="id" value="<%=id%>">
  <table width="500" border="0" align="center">
    <caption><h2>게시판 글쓰기</h2></caption>
    <tr>
      <td> 제 목 </td>
      <td> <input type="text" name="title" size="40" value="<%=rs.getString("title")%>"> </td>
    </tr>
    <tr>
      <td> 이 름 </td>
      <td> <input type="text" name="name" size="6" value="<%=rs.getString("name")%>"> </td>
    </tr>
    <tr>
      <td> 내 용 </td>
      <td> <textarea cols="40" rows="5" name="content"><%=rs.getString("content")%></textarea> </td>
    </tr>
    <tr>
      <td> 비 번 </td>
      <td> <input type="password" name="pwd"> </td>
    </tr>
    <tr>
      <td> 지 역 </td>
      <td> <!-- DB에  0~4까지의 값이 저장되어 있다.. rs.getString("area")의 값에 따라 다르게 체크-->
         <input type="radio" name="area" value="0">서울
         <input type="radio" name="area" value="1">경기
         <input type="radio" name="area" value="2">강원
         <input type="radio" name="area" value="3">충청
         <input type="radio" name="area" value="4">전라
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="checkbox" name="bimil" value="1">
        체크하시면 해당글은 비밀글이 됩니다.
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center"> <input type="submit" value="글쓰기"> </td>
    </tr>
  </table>
 </form>
</body>
</html>
<%
   // close
%>















