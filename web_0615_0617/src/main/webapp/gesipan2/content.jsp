<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 하나의 레코드를 읽어와서 모든 정보를 보여주기  (수정,목록,삭제)
    // DB 연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id");
    
    // 쿼리 생성
    String sql="select * from gesipan where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    ResultSet rs=pstmt.executeQuery();
    rs.next();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table width="500" align="center" border="1">
     <tr>
       <td> 제목 </td>
       <td> <%=rs.getString("title")%> </td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <%=rs.getString("name")%> </td>
     </tr>
     <tr>
       <td> 내용 </td>
       <td> <%=rs.getString("content").replace("\r\n","<br>")%> </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> <%=rs.getString("email")%> </td>
     </tr>
     <tr>
       <td> 조회수 </td>
       <td> <%=rs.getString("readnum")%> </td>
     </tr>
     <tr>
       <td> 작성일 </td>
       <td> <%=rs.getString("writeday")%> </td>
     </tr>
     <tr>
       <td align="center" colspan="2">   
         <a href="update.jsp?id=<%=rs.getInt("id")%>"> 수정 </a>
         <a href="list.jsp"> 목록 </a>
         <a href="javascript:del()"> 삭제 </a>
       </td>
     </tr>
     <tr id="del_form">
       <td colspan="2">
         <form method="post" action="delete.jsp">
           <input type="hidden" name="id" value="<%=id%>">
           비밀번호 <input type="password" name="pwd">
           <input type="submit" value="삭제">
         </form>
       </td>
     </tr>
   </table>
   <script>
     function del() // 숨겨진 삭제폼을 보이게
     {
    	 document.getElementById("del_form").style.display="table-row";
     }
   </script>
   <style>
     #del_form {
        display:none;
     }
   </style>
</body>
</html>