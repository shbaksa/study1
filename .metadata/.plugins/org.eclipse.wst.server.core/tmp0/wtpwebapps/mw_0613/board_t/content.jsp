<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //out.print(request.getHeader("referer"));
   if(request.getHeader("referer")==null)
   {
	   response.sendRedirect("list.jsp");
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
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
%>    
  <table width="500" border="1" align="center">
    <tr>
      <td> 제 목 </td>
      <td> <%=rs.getString("title")%> </td>
    </tr>
    <tr>
      <td> 이 름 </td>
      <td> <%=rs.getString("name")%> </td>
    </tr>
    <tr>
      <td> 내 용 </td>
      <td> <%=rs.getString("content").replace("\r\n","<br>")%> </td>
    </tr>
    <tr>
      <td> 조회수 </td>
      <td> <%=rs.getString("readnum")%> </td>
    </tr>
    <tr>
      <td> 작성일 </td>
      <td> <%=rs.getString("writeday")%> </td>
    </tr>
    <%
        String area;
        switch(rs.getInt("area"))  // 0~4
        {
            case 0: area="서울"; break;
            case 1: area="경기"; break;
            case 2: area="강원"; break;
            case 3: area="충청"; break;
            case 4: area="전라"; break;
            default: area="???";
        }
    %>
    <tr>
      <td> 지 역 </td>
      <td> <%=area%> </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <a href="update.jsp?id=<%=rs.getInt("id")%>"> 수정 </a>
        <a href="list.jsp"> 목록 </a>
        <a href="javascript:view()"> 삭제 </a>  <!-- 클릭시 입력폼을 나타나게 하기 -->
      </td>
    </tr>
    <tr id="del">
      <td colspan="2" align="center">
         <form method="post" action="delete.jsp">
           <input type="hidden" name="id" value="<%=id%>">
           비밀번호 <input type="password" name="pwd">
           <input type="submit" value="삭제">
         </form>
      </td>
    </tr> 
  </table> 
  <script>
   function view()
   {
	   document.getElementById("del").style.display="table-row";
   }
  </script>
  <style>
    #del {
      display:none;
    }
  </style>
<%    
    // close()
    pstmt.close();
    conn.close();
%>
</body>
</html>





