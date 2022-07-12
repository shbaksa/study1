<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- board2/list.jsp -->
 <%@page import="dat.BoardDao" %>
<%@page import="java.sql.ResultSet" %> 
 <%
     BoardDao bdao=new BoardDao();
     ResultSet rs=bdao.list();
  
 %>
 <style>
   #aa {
      position:absolute;
      visibility:hidden;
      background:yellow;
   }
 </style>
 <script>
   function view(id)
   {
	   document.getElementById("aa").style.visibility="visible";
	   document.getElementById("aa").style.left=(event.pageX+10)+"px";
	   document.getElementById("aa").style.top=event.pageY+"px";
	   document.pkc.id.value=id; // 매개변수를 폼태그에 전달
   }
 </script>
  <style>
     table {
       border-spacing:0px;
     }
   
     td {
       border-top:1px solid black;
       height:34px;
     }
     tr:last-child td {
       border-bottom:2px solid black;
     }
     tr:first-child td {
       border-top:2px solid black;
     }
     a {
       color:black;
       text-decoration:none;
     }
  </style>
    
  <form name="pkc" id="aa" method="post" action="bimil_check.jsp">
    <input type="hidden" name="id">
    비밀번호 <input type="password" name="pwd" size="4">
    <input type="submit" value="확인">
  </form>
   <table width="600" align="center">
     <caption> <h2> 게시판 </h2></caption>
     <tr align="center">
       <td width="300"> 제 목 </td>
       <td width="100"> 이 름 </td>
       <td width="100"> 조회수 </td>
       <td width="100"> 작성일 </td>     
     </tr>
  <%
    int chk=1;
    String back;
    while(rs.next())
    {
       if(chk%2 == 1) // chk가 홀수
    	  back="style='background:#eeeeee'"; 
       else  // chk가 짝수
    	  back="style='background:white'";
  %>   
     <tr <%=back%>>
      <%
      if(rs.getInt("bimil")==0) // bimil필드의 값은 0,1
      {
      %>
       <td> <a href="readnum.jsp?id=<%=rs.getInt("id")%>"> <%=rs.getString("title")%> </a> </td>
      <%
      }
      else
      {
      %>
       <td> <span onclick="view(<%=rs.getInt("id")%>)"> <%=rs.getString("title")%> </span></td> <!-- 클릭하면 비밀번호 입력창이 나오게 -->
                             <!-- id값을 위의 폼태그의 id에 준다 -->
      <%
      }
      %> 
       <td align="center"> <%=rs.getString("name")%> </td>
       <td align="center"> <%=rs.getString("readnum")%> </td>
       <td align="center"> <%=rs.getString("writeday")%> </td>     
     </tr>
  <%
      chk++;
    }
  %>  
   </table>
 <%     
     // close()
 %>
</body>
</html>