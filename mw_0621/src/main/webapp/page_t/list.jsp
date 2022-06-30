<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   a {
     color:black;
     text-decoration:none;
   }
   a:hover {
      text-decoration:underline;
    }
   
 </style>
</head>
<body> <!-- list.jsp => board1에 있는 내용을 읽어와서 출력하는 문서 -->
<%@page import="java.sql.*" %>
<%
   // DB연결
   Class.forName("com.mysql.jdbc.Driver");
   String db="jdbc:mysql://localhost:3306/first";
   Connection conn=DriverManager.getConnection(db,"root","1234");
	
   // request => 사용자가 원하는 페이지값
   int pager;
   if(request.getParameter("pager")==null) 
   {
	   pager=1;
   }
   else
   {
	   pager=Integer.parseInt(request.getParameter("pager"));  
   }
   
   
   // 사용자가 원하는 페이지의 index값 만들기
   int index=(pager-1)*10;
   
   // 쿼리 작성
   String sql="select * from board1 order by id desc limit ?,10";
   
   // 심부름꾼 생성
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setInt(1, index);
   
   // 쿼리 실행  => ResultSet결과 => 출력
   ResultSet rs=pstmt.executeQuery();
%> 
  <table width="500" border="1" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 작성자 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
    <%
      while(rs.next())
      {
    %>
    <tr>
      <td> <a href="readnum.jsp?id=<%=rs.getString("id")%>"> <%=rs.getString("title")%> </a> </td>
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
    <tr>
      <td colspan="4" align="center">
        <!-- 페이징 출력(사용자를 위한 링크) -->
    <%
        // pstart와 pend를 구하기
        int num=pager/10;
        if(pager%10 == 0)
        {
        	num=num-1;  // num--;
        }
        int pstart=num*10+1;
        int pend=pstart+9; // 마지막 그룹에서는 pend값을 총페이지를 계산하여 처리가 필요
                           // 마지막 그룹에서는 pend값을 총페이지값으로 변경
        // 총페이지를 구하개
        sql="select ceil(count(*)/10) as chong from board1";
        pstmt=conn.prepareStatement(sql);
        rs=pstmt.executeQuery();
        rs.next();
        int chong=rs.getInt("chong");
        
        if(pend > chong)
        {
        	pend=chong;
        }
    %>
    <!-- 이전페 이지로 이동(1, 10) -->
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
       <a href="list.jsp?pager=<%=pstart-1%>"> << </a>
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
       <a href="list.jsp?pager=<%=pager-1%>"> < </a>
    <% 
       }
      
        String str="";
        for(int i=pstart;i<=pend;i++)
        {
        	if(pager==i)
        	{
        		str="style='color:red;'";
        	}
        	else
        	{
        		str="";
        	}
    %>
           <a <%=str%> href="list.jsp?pager=<%=i%>"> <%=i%> </a>
    <%
        }
    %>
    <!-- 다음페이지로 이동(1, 10) -->
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
       <a href="list.jsp?pager=<%=pager+1%>"> > </a>
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
       <a href="list.jsp?pager=<%=pend+1%>"> >> </a>
      <%
       }
      %> 
      </td>
    </tr>
  </table>
</body>
</html>





