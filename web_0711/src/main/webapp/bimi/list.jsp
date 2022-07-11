<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board_page.BoardDao" %>   
<%@page import="java.sql.ResultSet" %> 
<%
    // list.jsp => board테이블의 내용을 가져와서 출력
    BoardDao bdao=new BoardDao();
    ResultSet rs=bdao.list(request);
    
    // pstart,pend를 구하기 위해 새로운 메소드를 호출
    int chong=bdao.getchong();
    int pstart=bdao.getpage(request);
    int pend=pstart+9;
    if(pend>chong)
    	pend=chong;
    //out.print(pstart+" "+pend);
    // 현재 페이지 소스
    // 스크립트릿에서는 page는 예약어 사용불가
    int pager=bdao.getnow(request);
    // java영역에서는 page변수
    // jsp영역에서는 pager로 사용
    
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   a {
     text-decoration:none;
     color:black;
   }
   #bimil_tag {
     position:absolute;
     visibility:hidden; 
   }
 </style>
 <script>
   function bimil(id)
   {
	   var x=event.pageX;
	   var y=event.pageY;
	   
	   // x,y좌표에 폼태그를 보이게 하기
	   document.getElementById("bimil_tag").style.visibility="visible";
	   document.getElementById("bimil_tag").style.left=x+"px";
	   document.getElementById("bimil_tag").style.top=y+"px";
	   // id값을 폼태그의 hidden에 전달
	   document.pkc.id.value=id;
   }
 </script>
</head>
<body>
  <!-- 비밀글일 경우 나타낼 폼 태그 : 레이어 -->
  <div id="bimil_tag">
    <form name="pkc" method="post" action="bimil_check.jsp">
      <input type="hidden" name="id">
      <input type="password" name="pwd" placeholder="비밀번호" size="4">
      <input type="submit" value="확인">
    </form>
  </div>
  
  <!-- 출력 -->
  <table width="600" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 이 름 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
  <%
   while(rs.next())  // 레코드를 하나씩 출력하는 반복문
   {
  %>  
    <tr>
    
      <td> 
       <%
        if(rs.getInt("bimil")==0)
        {
       %>
        <a href="readnum.jsp?id=<%=rs.getInt("id")%>"> <%=rs.getString("title")%> </a> 
       <%
        }
        else
        {
       %> 
        <a href="#" onclick="bimil(<%=rs.getInt("id")%>)"> <%=rs.getString("title")%> </a> <!-- 비밀글일 경우 -->
       <%
        }
       %>
      </td>
      
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getString("readnum")%> </td>
      <td> <%=rs.getString("writeday")%> </td>
    </tr>
  <%
   }
  %>  
   <!-- 페이지 출력 -->
   <tr>
     <td colspan="4" align="center">
     <!-- 이전 10페이지 이동, 이전 1페이지 이동 -->
     <!-- 이전 10페이지 이동(이전 그룹) : 첫그룹에서는 링크 X -->
      <%
        if(pstart==1)
        {
      %>
       <<
      <%
        }
        else
        {
      %> 
       <a href="list.jsp?page=<%=pstart-1%>"> << </a>
      <%
        }
      %>
    <!-- 이전 1페이지 이동 : 현재페이지가 1페이지이면 링크 X -->
      <%
       if(pager==1)
       {
      %>  
       <
      <%
       }
       else
       {
      %> 
       <a href="list.jsp?page=<%=pager-1%>"> < </a>
    <% 
       }
    
      String str="";
      for(int i=pstart;i<=pend;i++)
      {
    	  if(pager==i)
    	     str="style='color:red;'";
    	  else
    		 str="";
     %>
      <a <%=str %> href="list.jsp?page=<%=i%>"> <%=i%> </a>
     <%
      }
     %>
     
     <!-- 다음 10페이지 , 다음 1페이지 이동 -->
     <!-- 다음 1페이지 이동 : 현재페이지가 마지막페이지면 링크 X -->
    <!-- 다음 1페이지 이동 : 현재페이지가 마지막페이지면 링크 X -->
     <%
       if(pager == chong)
       {
     %>
       >
     <%
       }
       else
       {
      %>  
       <a href="list.jsp?page=<%=pager+1%>"> > </a>
      <%
       }
      %>  
       
    <!-- 다음 10페이지 이동 : 마지막 그룹이라면 링크 X-->
      <%
       if(chong == pend)
       {
      %> 
       >>
      <%
       }
       else
       {
      %> 
       <a href="list.jsp?page=<%=pend+1%>"> >> </a>
      <%
       }
      %> 
     </td>
   </tr> 
   <tr>
     <td colspan="4">
       <a href="write.jsp"> 글쓰기 </a>
     </td>
   </tr>
  </table>
</body>
</html>
<%
  bdao.close();
%>








