<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.Member_Dao" %>   
<%@page import="java.sql.ResultSet" %>
<%
     Member_Dao mdao=new Member_Dao();
     ResultSet rs=mdao.list();
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function up(i,name,age,my,id)
   {
	   document.getElementsByClassName("nn")[i].innerHTML="<input type='text' size='4' id='name' value='"+name+"'>";
	   document.getElementsByClassName("aa")[i].innerHTML="<input type='age' size='4' id='age' value='"+age+"'>";
	   my.onclick="up_sub(name,age,id)";
   }
   function up_sub(name,age,id)
   {   alert();
	   location="update_ok.jsp?name="+name+"&age="+age+"&id="+id;
   }
 </script>
</head>
<body> <!-- list.jsp -->
  <!-- member테이블의 내용을 select 해서 전부 출력 -->
  <!-- 테이블 출력 -->
  <table width="500" align="center" border="1">
    <caption><h2> 회원 명단 </h2></caption>
    <tr>
      <td> 이름 </td>
      <td> 나이 </td>
      <td> 수정 </td>
      <td> 삭제 </td>
    </tr>
  <%
    int i=0;
    while(rs.next())
    {
  %>
     <tr>
      <td class="nn"> <%=rs.getString("name")%> </td>
      <td class="aa"> <%=rs.getInt("age")%> </td>
      <td> <span onclick="up(<%=i%>,'<%=rs.getString("name")%>',<%=rs.getInt("age")%>,this,<%=rs.getInt("id")%>)"> 수정 </span></td>
      <td> <a href="delete.jsp?id=<%=rs.getInt("id")%>"> 삭제 </a> </td>
    </tr>
  <%
    i++;
    }
  %>
  </table>
</body>
</html>